// ignore_for_file: avoid_dynamic_calls

import 'package:dio/dio.dart';
import 'package:github_client/core/infra/remote_response.dart';
import 'package:github_client/githubRepos/core/infra/github_headers_cache.dart';
import 'package:github_client/githubRepos/core/infra/pagination_config.dart';
import 'package:github_client/githubRepos/core/infra/repodto.dart';
import 'package:github_client/githubRepos/repos/core/infra/common_repos_remote_service.dart';

class SearchedReposRemoteService extends CommonReposRemoteService {
  SearchedReposRemoteService(Dio dio, GithubHeadersCache _headersCache)
      : super(dio, _headersCache);

  Future<RemoteResponse<List<RepoDTO>>> getSearchedRepos(
    String queryParameter,
    int page,
  ) async =>
      super.getReposPage(
        requestUri: Uri.https(
          'api.github.com',
          '/search/repositories',
          {
            'q': queryParameter,
            'page': '$page',
            'per_page': PaginationConfig.reposPerPage.toString(),
          },
        ),
        jsonDataSelector: (json) => json['items'] as List<dynamic>,
      );
}
