import 'package:dio/dio.dart';
import 'package:github_client/core/infra/network_connection.dart';
import 'package:github_client/core/infra/remote_response.dart';
import 'package:github_client/core/shared/extensions.dart';
import 'package:github_client/githubRepos/core/infra/github_headers.dart';
import 'package:github_client/githubRepos/core/infra/github_headers_cache.dart';
import 'package:github_client/githubRepos/core/infra/repodto.dart';

abstract class CommonReposRemoteService {
  final Dio dio;
  final GithubHeadersCache _headersCache;

  CommonReposRemoteService(this.dio, this._headersCache);

  Future<RemoteResponse<List<RepoDTO>>> getReposPage({
    required Uri requestUri,
    required List<dynamic> Function(dynamic json) jsonDataSelector,
  }) async {
    final prevHeaders = await _headersCache.getHeaders(
      requestUri,
    );
    try {
      final response = await dio.getUri(
        requestUri,
        options: Options(
          headers: {
            'If-None-Match': prevHeaders?.eTag ?? "",
          },
        ),
      );
      if (response.statusCode == 304) {
        return RemoteResponse.notModified(
          maxPage: prevHeaders?.link?.lastPage ?? 0,
        );
      } else if (response.statusCode == 200) {
        final headers = GithubHeaders.parse(response);
        await _headersCache.saveHeaders(requestUri, headers);
        final covertedData = jsonDataSelector(response.data)
            .map((e) => RepoDTO.fromJson(e as Map<String, dynamic>))
            .toList();
        return RemoteResponse.withNewData(
          covertedData,
          maxPage: headers.link?.lastPage ?? 1,
        );
      } else {
        throw RestApiException(response.statusCode);
      }
    } on DioError catch (e) {
      if (e.noInternetConnection) {
        return const RemoteResponse.noConnection();
      } else if (e.response != null) {
        throw RestApiException(e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }
}
