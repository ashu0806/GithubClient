import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_client/core/presentaion/toasts.dart';
import 'package:github_client/githubRepos/core/presentation/no_content_display.dart';
import 'package:github_client/githubRepos/repos/core/application/paginated_repos_notifier.dart';
import 'package:github_client/githubRepos/repos/core/presentation/widgets/failure_repo_tile.dart';
import 'package:github_client/githubRepos/repos/core/presentation/widgets/loading_repo_tile.dart';
import 'package:github_client/githubRepos/repos/core/presentation/widgets/repo_tile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class PaginatedRepos extends ConsumerStatefulWidget {
  final AutoDisposeStateNotifierProvider<PaginatedReposNotifier,
      PaginatedRepoState> paginatedReposNotifierProvider;
  final PaginatedRepoState state;
  final void Function(WidgetRef ref) getNextPageOfSearchAndStarredRepos;
  final String noResultsMessage;

  const PaginatedRepos({
    Key? key,
    required this.paginatedReposNotifierProvider,
    required this.state,
    required this.getNextPageOfSearchAndStarredRepos,
    required this.noResultsMessage,
  }) : super(key: key);

  @override
  ConsumerState createState() => _PaginatedReposState();
}

class _PaginatedReposState extends ConsumerState<PaginatedRepos> {
  bool canLoadNextPage = false;
  bool hasAlreadyShownToast = false;
  @override
  Widget build(BuildContext context) {
    ref.listen<PaginatedRepoState>(
      widget.paginatedReposNotifierProvider,
      (previous, next) {
        previous!.map(
          initial: (_) => canLoadNextPage = true,
          loading: (_) => canLoadNextPage = true,
          loadSuccess: (_) {
            if (!_.repositories.isFresh && !hasAlreadyShownToast) {
              hasAlreadyShownToast = true;
              showNoConnectionToast(
                "You're offline . Some data may be outdated.",
                context,
              );
            }
            canLoadNextPage = _.isNextPagePresent;
          },
          loadFailure: (_) => canLoadNextPage = false,
        );
      },
    );
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        final metrix = notification.metrics;
        final limit = metrix.maxScrollExtent - metrix.viewportDimension / 3;
        if (canLoadNextPage && metrix.pixels >= limit) {
          canLoadNextPage = false;
          widget.getNextPageOfSearchAndStarredRepos(ref);
        }

        return false;
      },
      child: widget.state.maybeWhen(
        loadSuccess: (repos, _) => repos.entity.isEmpty,
        orElse: () => false,
      )
          ? NoContentDisplayPage(
              msg: widget.noResultsMessage,
            )
          : _PaginatedListView(
              state: widget.state,
            ),
    );
  }
}

class _PaginatedListView extends StatelessWidget {
  const _PaginatedListView({
    Key? key,
    required this.state,
  }) : super(key: key);

  final PaginatedRepoState state;

  @override
  Widget build(BuildContext context) {
    final floatingSearchBar = FloatingSearchBar.of(context)?.widget;
    return ListView.builder(
      padding: floatingSearchBar == null
          ? EdgeInsets.zero
          : EdgeInsets.only(
              top: floatingSearchBar.height +
                  5.h +
                  MediaQuery.of(context).padding.top,
            ),
      itemCount: state.map(
        initial: (_) => 0,
        loading: (_) => _.repositories.entity.length + _.reposPerPage,
        loadSuccess: (_) => _.repositories.entity.length,
        loadFailure: (_) => _.repositories.entity.length + 1,
      ),
      itemBuilder: (context, index) {
        return state.map(
          initial: (_) => ReposTile(
            repo: _.repositories.entity[index],
          ),
          loading: (_) {
            if (index < _.repositories.entity.length) {
              return ReposTile(
                repo: _.repositories.entity[index],
              );
            } else {
              return const LoadingRepoTile();
            }
          },
          loadSuccess: (_) => ReposTile(
            repo: _.repositories.entity[index],
          ),
          loadFailure: (_) {
            if (index < _.repositories.entity.length) {
              return ReposTile(
                repo: _.repositories.entity[index],
              );
            } else {
              return FailureRepoTile(
                failure: _.failure,
              );
            }
          },
        );
      },
    );
  }
}
