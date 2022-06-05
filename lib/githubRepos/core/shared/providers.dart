import 'package:github_client/core/shared/providers.dart';
import 'package:github_client/githubRepos/core/infra/github_headers_cache.dart';
import 'package:github_client/githubRepos/repos/core/application/paginated_repos_notifier.dart';
import 'package:github_client/githubRepos/repos/searched_repos/application/searched_repos_notifier.dart';
import 'package:github_client/githubRepos/repos/searched_repos/infrastructure/searched_repos_remote_service.dart';
import 'package:github_client/githubRepos/repos/searched_repos/infrastructure/searched_repos_repository.dart';
import 'package:github_client/githubRepos/repos/starred_repos_page/application/starred_repos_notifier.dart';
import 'package:github_client/githubRepos/repos/starred_repos_page/infra/starred_repos_local_service.dart';
import 'package:github_client/githubRepos/repos/starred_repos_page/infra/starred_repos_remote_service.dart';
import 'package:github_client/githubRepos/repos/starred_repos_page/infra/starred_repos_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final githubHeadersCacheProvider = Provider(
  (ref) => GithubHeadersCache(
    ref.watch(sembastProvider),
  ),
);

final starredReposLocalServiceProvider = Provider(
  (ref) => ReposLocalService(
    ref.watch(sembastProvider),
  ),
);

final starredReposRemoteServiceProvider = Provider(
  (ref) => StarredReposRemoteService(
    ref.watch(dioProvider),
    ref.watch(githubHeadersCacheProvider),
  ),
);

final starredReposRepositoryProvider = Provider(
  (ref) => StarredReposRepository(
    ref.watch(starredReposRemoteServiceProvider),
    ref.watch(starredReposLocalServiceProvider),
  ),
);

final starredReposNotifierProvider =
    StateNotifierProvider.autoDispose<StarredReposNotifier, PaginatedRepoState>(
  (ref) => StarredReposNotifier(
    ref.watch(starredReposRepositoryProvider),
  ),
);

final searchedReposRemoteServiceProvider = Provider(
  (ref) => SearchedReposRemoteService(
    ref.watch(dioProvider),
    ref.watch(githubHeadersCacheProvider),
  ),
);

final searchedReposRepositoryProvider = Provider(
  (ref) => SearchedReposRepository(
    ref.watch(searchedReposRemoteServiceProvider),
  ),
);

final searchedReposNotifierProvider = StateNotifierProvider.autoDispose<
    SearchedReposNotifier, PaginatedRepoState>(
  (ref) => SearchedReposNotifier(
    ref.watch(searchedReposRepositoryProvider),
  ),
);
