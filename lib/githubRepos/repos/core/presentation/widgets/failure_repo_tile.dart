import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_client/githubRepos/core/domain/repo_failure.dart';
import 'package:github_client/githubRepos/repos/core/presentation/widgets/paginated_repos.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FailureRepoTile extends HookConsumerWidget {
  final RepoFailure failure;
  const FailureRepoTile({
    Key? key,
    required this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTileTheme(
      textColor: Theme.of(context).colorScheme.onError,
      iconColor: Theme.of(context).colorScheme.onError,
      child: Card(
        color: Theme.of(context).errorColor,
        margin: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 7.h,
        ),
        child: ListTile(
          title: const Text(
            'An error occurred, please retry',
          ),
          subtitle: Text(
            failure.map(
              api: (error) => 'API returned ${error.errorCode}',
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          leading: const SizedBox(
            height: double.infinity,
            child: Icon(
              Icons.warning,
            ),
          ),
          trailing: SizedBox(
            height: double.infinity,
            child: IconButton(
              icon: const Icon(
                Icons.refresh,
              ),
              onPressed: () {
                context
                    .findAncestorWidgetOfExactType<PaginatedRepos>()
                    ?.getNextPageOfSearchAndStarredRepos(ref);
              },
            ),
          ),
        ),
      ),
    );
  }
}
