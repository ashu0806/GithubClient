import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_client/auth/shared/providers.dart';
import 'package:github_client/core/routes/routes.gr.dart';
import 'package:github_client/githubRepos/core/shared/providers.dart';
import 'package:github_client/githubRepos/repos/core/presentation/widgets/paginated_repos.dart';
import 'package:github_client/search/presentation/search_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StarredReposPage extends ConsumerStatefulWidget {
  const StarredReposPage({Key? key}) : super(key: key);

  @override
  ConsumerState createState() => _StarredReposPageState();
}

class _StarredReposPageState extends ConsumerState<StarredReposPage> {
  @override
  void initState() {
    super.initState();
    ref.read(starredReposNotifierProvider.notifier).getNextStarredReposPage();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(starredReposNotifierProvider);
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 1.sh,
          child: SearchBar(
            title: 'Starred repositories',
            hintText: 'Search all repos...',
            onNavigatetoSearchPage: (searchTerm) {
              AutoRouter.of(context).push(
                SearchedReposRoute(
                  searchItem: searchTerm,
                ),
              );
            },
            onSignOutButtonPressed: () {
              ref.read(authNotifierProvider.notifier).signOut();
            },
            body: SafeArea(
              child: PaginatedRepos(
                state: state,
                paginatedReposNotifierProvider: starredReposNotifierProvider,
                getNextPageOfSearchAndStarredRepos: (ref) => ref
                    .read(starredReposNotifierProvider.notifier)
                    .getNextStarredReposPage(),
                noResultsMessage:
                    'There is no starred repo present in your account .',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
