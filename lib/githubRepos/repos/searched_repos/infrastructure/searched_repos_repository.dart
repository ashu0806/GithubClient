import 'package:dartz/dartz.dart';
import 'package:github_client/core/domain/fresh.dart';
import 'package:github_client/core/infra/network_connection.dart';
import 'package:github_client/core/shared/extensions.dart';
import 'package:github_client/githubRepos/core/domain/github_repo.dart';
import 'package:github_client/githubRepos/core/domain/repo_failure.dart';
import 'package:github_client/githubRepos/repos/searched_repos/infrastructure/searched_repos_remote_service.dart';

class SearchedReposRepository {
  final SearchedReposRemoteService _remoteService;

  SearchedReposRepository(this._remoteService);

  Future<Either<RepoFailure, FreshClass<List<GithubRepo>>>> getSearchedRepos(
    String queryParameter,
    int page,
  ) async {
    try {
      final remotePageItems =
          await _remoteService.getSearchedRepos(queryParameter, page);

      return right(
        await remotePageItems.maybeWhen(
          withNewData: (data, maxPage) => FreshClass.yes(
            data.toDomain(),
            isNextPagePresent: page < maxPage,
          ),
          orElse: () => FreshClass.no(
            [],
            isNextPagePresent: false,
          ),
        ),
      );
    } on RestApiException catch (e) {
      return left(
        RepoFailure.api(e.errorCode),
      );
    }
  }
}
