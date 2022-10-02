import 'package:dartz/dartz.dart';
import 'package:github_client/core/domain/fresh.dart';
import 'package:github_client/core/infra/network_connection.dart';
import 'package:github_client/core/shared/extensions.dart';
import 'package:github_client/githubRepos/core/domain/github_repo.dart';
import 'package:github_client/githubRepos/core/domain/repo_failure.dart';
import 'package:github_client/githubRepos/repos/starred_repos_page/infra/starred_repos_local_service.dart';
import 'package:github_client/githubRepos/repos/starred_repos_page/infra/starred_repos_remote_service.dart';

class StarredReposRepository {
  final StarredReposRemoteService _remoteService;
  final ReposLocalService _localService; 

  StarredReposRepository(this._remoteService, this._localService);

  Future<Either<RepoFailure, FreshClass<List<GithubRepo>>>> getStarredRepos(
    int page,
  ) async {
    try {
      final remoteResponse = await _remoteService.getStarredRepos(page);

      return right(
        await remoteResponse.when(
          noConnection: () async => FreshClass.no(
            await _localService.getRepoPage(page).then(
                  (value) => value.toDomain(),
                ),
            isNextPagePresent: page < await _localService.getLocalPageCount(),
          ),
          //TODO : local sevice
          notModified: (maxPage) async => FreshClass.yes(
            await _localService.getRepoPage(page).then(
                  (value) => value.toDomain(),
                ),
            isNextPagePresent: page < maxPage,
          ),
          withNewData: (data, maxPage) async {
            await _localService.upsertRepos(data, page);
            return FreshClass.yes(
              data.toDomain(),
              isNextPagePresent: page < maxPage,
            );
          },
        ),
      );
    } on RestApiException catch (e) {
      return left(
        RepoFailure.api(
          e.errorCode,
        ),
      );
    }
  }
}
