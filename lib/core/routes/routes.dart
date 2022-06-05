import 'package:auto_route/annotations.dart';
import 'package:github_client/auth/presentation/auth_page.dart';
import 'package:github_client/auth/presentation/sign_in_page.dart';
import 'package:github_client/githubRepos/repos/searched_repos/presentation/searched_repos_page.dart';
import 'package:github_client/githubRepos/repos/starred_repos_page/presentation/starred_repos_page.dart';
import 'package:github_client/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      page: SplashPage,
      initial: true,
    ),
    AutoRoute(
      page: SignInPage,
    ),
    AutoRoute(
      page: AuthPage,
    ),
    AutoRoute(
      page: StarredReposPage,
    ),
    AutoRoute(
      page: SearchedReposPage,
    ),
  ],
)
class $AppRouter {}
