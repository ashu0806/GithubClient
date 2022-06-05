import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_client/auth/application/auth_state.dart';
import 'package:github_client/auth/shared/providers.dart';
import 'package:github_client/core/routes/routes.gr.dart';
import 'package:github_client/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final initialProvider = FutureProvider<Unit>(
  (ref) async {
    await ref.read(sembastProvider).initialize();
    ref.read(dioProvider)
      ..options = BaseOptions(
        headers: {
          'Accept': 'application/vnd.github.v3.html+json',
        },
        validateStatus: (status) =>
            status != null && status >= 200 && status < 400,
      )
      ..interceptors.add(
        ref.read(oAuth2InterceptorProvider),
      );
    final authNotifier = ref.read(authNotifierProvider.notifier);
    await authNotifier.checkingAuthStatus();
    return unit;
  },
);

class MyWidget extends HookConsumerWidget {
  MyWidget({Key? key}) : super(key: key);

  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(initialProvider, (_, state) {});
    ref.listen<AuthState>(
      authNotifierProvider,
      (context, state) {
        state.maybeMap(
          orElse: () {},
          authenticated: (_) {
            _appRouter.pushAndPopUntil(
              const StarredReposRoute(),
              predicate: (routes) => false,
            );
          },
          unauthenticated: (_) {
            _appRouter.pushAndPopUntil(
              const SignInRoute(),
              predicate: (routes) => false,
            );
          },
        );
      },
    );
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          routeInformationParser: _appRouter.defaultRouteParser(),
          routerDelegate: _appRouter.delegate(),
          debugShowCheckedModeBanner: false,
          title: 'Github Client',
        );
      },
    );
  }
}
