import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_client/githubRepos/core/domain/github_repo.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ReposTile extends StatelessWidget {
  final GithubRepo repo;
  const ReposTile({
    Key? key,
    required this.repo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.w,
        right: 5.w,
      ),
      child: ListTile(
        title: Text(
          repo.repoName,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.headline3!.copyWith(
                fontSize: 18.sp,
                color: Colors.black,
              ),
        ),
        subtitle: Text(
          repo.repoDesc,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.headline4!.copyWith(
                fontSize: 12.sp,
                color: Colors.grey,
              ),
        ),
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: CachedNetworkImageProvider(
            repo.ownerDetails.avatarUrlSmall,
          ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              MdiIcons.starOutline,
              color: Colors.black,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              repo.stargazerCounts.toString(),
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
        onTap: () {
          //TODO
        },
      ),
    );
  }
}
