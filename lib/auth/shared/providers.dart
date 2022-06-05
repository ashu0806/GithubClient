import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:github_client/auth/application/auth_state.dart';
import 'package:github_client/auth/infra/github_authenticator.dart';
import 'package:github_client/auth/infra/oauth2_interceptor.dart';
import 'package:github_client/auth/infra/storage_credentials/secure_storage_credentials.dart';
import 'package:github_client/auth/infra/storage_credentials/storage_credentials.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final flutterSecureStorageProvider = Provider(
  (ref) => const FlutterSecureStorage(),
);
final dioAuthProvider = Provider(
  (ref) => Dio(),
);

final oAuth2InterceptorProvider = Provider(
  (ref) => Oauth2Interceptor(
    ref.watch(githubAuthenticatorProvider),
    ref.watch(authNotifierProvider.notifier),
    ref.watch(dioAuthProvider),
  ),
);

final secureCredentialsProvider = Provider<StorageCredentials>(
  (ref) => SecureStorageCredentials(
    ref.watch(flutterSecureStorageProvider),
  ),
);

final githubAuthenticatorProvider = Provider(
  (ref) => GithubAuthenticator(
    ref.watch(secureCredentialsProvider),
    ref.watch(dioAuthProvider),
  ),
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(
    ref.watch(githubAuthenticatorProvider),
  ),
);
