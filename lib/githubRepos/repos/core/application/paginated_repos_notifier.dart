import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_client/core/domain/fresh.dart';
import 'package:github_client/githubRepos/core/domain/github_repo.dart';
import 'package:github_client/githubRepos/core/domain/repo_failure.dart';
import 'package:github_client/githubRepos/core/infra/pagination_config.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
part 'paginated_repos_notifier.freezed.dart';

typedef RepositoryGetter
    = Future<Either<RepoFailure, FreshClass<List<GithubRepo>>>> Function(
  int page,
);

@freezed
class PaginatedRepoState with _$PaginatedRepoState {
  const PaginatedRepoState._();
  const factory PaginatedRepoState.initial(
    FreshClass<List<GithubRepo>> repositories,
  ) = _Initial;
  const factory PaginatedRepoState.loading(
    FreshClass<List<GithubRepo>> repositories,
    int reposPerPage,
  ) = _Loading;
  const factory PaginatedRepoState.loadSuccess(
    FreshClass<List<GithubRepo>> repositories, {
    required bool isNextPagePresent,
  }) = _LoadSuccess;
  const factory PaginatedRepoState.loadFailure(
    FreshClass<List<GithubRepo>> repositories,
    RepoFailure failure,
  ) = _LoadFailure;
}

class PaginatedReposNotifier extends StateNotifier<PaginatedRepoState> {
  PaginatedReposNotifier()
      : super(
          PaginatedRepoState.initial(
            FreshClass.yes([]),
          ),
        );

  int _page = 1;

  @protected
  Future<void> getNextPage(RepositoryGetter getter) async {
    // state = StarredRepoState.loadFailure(
    //   state.repositories,
    //   const RepoFailure.api(404),
    // );
    state = PaginatedRepoState.loading(
      state.repositories,
      PaginationConfig.reposPerPage,
    );

    final failureOrSuccess = await getter(_page);
    state = failureOrSuccess.fold(
      (l) => PaginatedRepoState.loadFailure(state.repositories, l),
      (r) {
        _page++;
        return PaginatedRepoState.loadSuccess(
          r.copyWith(
            entity: [
              ...state.repositories.entity,
              ...r.entity,
            ],
          ),
          isNextPagePresent: r.isNextPagePresent ?? false,
        );
      },
    );
  }
}
