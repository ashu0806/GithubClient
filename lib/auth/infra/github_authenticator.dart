// ignore_for_file: depend_on_referenced_packages

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:github_client/auth/domain/auth_failure.dart';
import 'package:github_client/auth/infra/storage_credentials/storage_credentials.dart';
import 'package:github_client/core/shared/extensions.dart';
import 'package:github_client/core/shared/string_to_base64.dart';
import 'package:http/http.dart' as http;
import 'package:oauth2/oauth2.dart';

class GithubOAuthHttpClient extends http.BaseClient {
  final httpClient = http.Client();
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['Accept'] = 'application/json';
    return httpClient.send(request);
  }
}

class GithubAuthenticator {
  final StorageCredentials _storageCredentials;
  final Dio _dio;

  GithubAuthenticator(this._storageCredentials, this._dio);

  static const clientId = '6e35bdf12dc295dcb743';
  static const clientSecret = 'e21f6a4a388dedcd9ad5d689721a3996f7bcd591';
  static const scopes = [
    'read:user',
    'repo',
  ];

  static final authorizationEndPoint = Uri.parse(
    'https://github.com/login/oauth/authorize',
  );

  static final accessTokenEndPoint = Uri.parse(
    'https://github.com/login/oauth/access_token',
  );
  static final revocationEndPoint = Uri.parse(
    'https://api.github.com/applications/$clientId/token',
  );

  static final redirectedUrl = Uri.parse(
    'http://localhost:3000/callback',
  );
  Future<Credentials?> getSignedInCredentials() async {
    try {
      final storedCredentials = await _storageCredentials.read();
      if (storedCredentials != null) {
        if (storedCredentials.canRefresh && storedCredentials.isExpired) {
          final errorOrCredentials =
              await refreshCredentials(storedCredentials);
          return errorOrCredentials.fold((l) => null, (r) => r);
        }
      }
      return storedCredentials;
    } on PlatformException {
      return null;
    }
  }

  Future<bool> isSignIn() {
    return getSignedInCredentials().then(
      (credentials) => credentials != null,
    );
  }

  AuthorizationCodeGrant creatingGrant() {
    return AuthorizationCodeGrant(
      clientId,
      authorizationEndPoint,
      accessTokenEndPoint,
      secret: clientSecret,
      httpClient: GithubOAuthHttpClient(),
    );
  }

  Uri getAuthorizationUrl(AuthorizationCodeGrant grant) {
    return grant.getAuthorizationUrl(redirectedUrl, scopes: scopes);
  }

  Future<Either<AuthFailure, Unit>> handleAuthorizationResponse(
    AuthorizationCodeGrant grant,
    Map<String, String> parameters,
  ) async {
    try {
      final client = await grant.handleAuthorizationResponse(parameters);
      await _storageCredentials.save(client.credentials);
      return right(unit);
    } on FormatException {
      return left(
        const AuthFailure.server(),
      );
    } on AuthorizationException catch (e) {
      return left(
        AuthFailure.server('${e.error}:${e.description}'),
      );
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Unit>> signout() async {
    try {
      final accessToken = await _storageCredentials.read().then(
            (value) => value?.accessToken,
          );
      final userNameandPassword =
          stringTobase64.encode('$clientId:$clientSecret');
      try {
        await _dio.deleteUri(
          revocationEndPoint,
          data: {
            'access_token': accessToken,
          },
          options: Options(
            headers: {
              'Authorization': 'basic $userNameandPassword',
            },
          ),
        );
      } on DioError catch (e) {
        if (e.noInternetConnection) {
          // print("No Internet");
        } else {
          rethrow;
        }
      }
      return clearCredentials();
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Unit>> clearCredentials() async {
    try {
      await _storageCredentials.clear();
      return right(unit);
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Credentials>> refreshCredentials(
    Credentials credentials,
  ) async {
    try {
      final refreshCredentials = await credentials.refresh(
        identifier: clientId,
        secret: clientSecret,
        httpClient: GithubOAuthHttpClient(),
      );
      await _storageCredentials.save(refreshCredentials);
      return right(refreshCredentials);
    } on FormatException {
      return left(
        const AuthFailure.server(),
      );
    } on AuthorizationException catch (e) {
      return left(
        AuthFailure.server(
          '${e.error}:${e.description}',
        ),
      );
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }
}
