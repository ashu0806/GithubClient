import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_client/githubRepos/core/shared/providers.dart';
import 'package:github_client/githubRepos/repos/core/presentation/widgets/paginated_repos.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchedReposPage extends ConsumerStatefulWidget {
  final String searchItem;
  const SearchedReposPage({
    Key? key,
    required this.searchItem,
  }) : super(key: key);

  @override
  ConsumerState createState() => _SearchedReposPageState();
}

class _SearchedReposPageState extends ConsumerState<SearchedReposPage> {
  @override
  void initState() {
    super.initState();
    ref.read(searchedReposNotifierProvider.notifier).getNextSearchedReposPage(
          widget.searchItem,
        );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(searchedReposNotifierProvider);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              AutoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            widget.searchItem,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontSize: 25.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        body: PaginatedRepos(
          state: state,
          paginatedReposNotifierProvider: searchedReposNotifierProvider,
          getNextPageOfSearchAndStarredRepos: (ref) => ref
              .read(searchedReposNotifierProvider.notifier)
              .getNextSearchedReposPage(
                widget.searchItem,
              ),
          noResultsMessage:
              'There must be no repos related to the searched terms .',
        ),
      ),
    );
  }
}
