// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../auth/presentation/auth_page.dart' as _i3;
import '../../auth/presentation/sign_in_page.dart' as _i2;
import '../../githubRepos/repos/searched_repos/presentation/searched_repos_page.dart'
    as _i5;
import '../../githubRepos/repos/starred_repos_page/presentation/starred_repos_page.dart'
    as _i4;
import '../../splash/splash_page.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    AuthRoute.name: (routeData) {
      final args = routeData.argsAs<AuthRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.AuthPage(
              key: args.key,
              authorizationUrl: args.authorizationUrl,
              onAuthorizationCode: args.onAuthorizationCode));
    },
    StarredReposRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.StarredReposPage());
    },
    SearchedReposRoute.name: (routeData) {
      final args = routeData.argsAs<SearchedReposRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.SearchedReposPage(
              key: args.key, searchItem: args.searchItem));
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashRoute.name, path: '/'),
        _i6.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i6.RouteConfig(AuthRoute.name, path: '/auth-page'),
        _i6.RouteConfig(StarredReposRoute.name, path: '/starred-repos-page'),
        _i6.RouteConfig(SearchedReposRoute.name, path: '/searched-repos-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i6.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.AuthPage]
class AuthRoute extends _i6.PageRouteInfo<AuthRouteArgs> {
  AuthRoute(
      {_i7.Key? key,
      required Uri authorizationUrl,
      required void Function(Uri) onAuthorizationCode})
      : super(AuthRoute.name,
            path: '/auth-page',
            args: AuthRouteArgs(
                key: key,
                authorizationUrl: authorizationUrl,
                onAuthorizationCode: onAuthorizationCode));

  static const String name = 'AuthRoute';
}

class AuthRouteArgs {
  const AuthRouteArgs(
      {this.key,
      required this.authorizationUrl,
      required this.onAuthorizationCode});

  final _i7.Key? key;

  final Uri authorizationUrl;

  final void Function(Uri) onAuthorizationCode;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, authorizationUrl: $authorizationUrl, onAuthorizationCode: $onAuthorizationCode}';
  }
}

/// generated route for
/// [_i4.StarredReposPage]
class StarredReposRoute extends _i6.PageRouteInfo<void> {
  const StarredReposRoute()
      : super(StarredReposRoute.name, path: '/starred-repos-page');

  static const String name = 'StarredReposRoute';
}

/// generated route for
/// [_i5.SearchedReposPage]
class SearchedReposRoute extends _i6.PageRouteInfo<SearchedReposRouteArgs> {
  SearchedReposRoute({_i7.Key? key, required String searchItem})
      : super(SearchedReposRoute.name,
            path: '/searched-repos-page',
            args: SearchedReposRouteArgs(key: key, searchItem: searchItem));

  static const String name = 'SearchedReposRoute';
}

class SearchedReposRouteArgs {
  const SearchedReposRouteArgs({this.key, required this.searchItem});

  final _i7.Key? key;

  final String searchItem;

  @override
  String toString() {
    return 'SearchedReposRouteArgs{key: $key, searchItem: $searchItem}';
  }
}
