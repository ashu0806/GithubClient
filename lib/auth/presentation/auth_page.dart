import 'dart:io';

import 'package:flutter/material.dart';
import 'package:github_client/auth/infra/github_authenticator.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AuthPage extends StatefulWidget {
  final Uri authorizationUrl;
  final void Function(Uri redirectUrl) onAuthorizationCode;
  const AuthPage({
    Key? key,
    required this.authorizationUrl,
    required this.onAuthorizationCode,
  }) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: widget.authorizationUrl.toString(),
          onWebViewCreated: (controller) {
            controller.clearCache();
            CookieManager().clearCookies();
          },
          navigationDelegate: (navRequest) {
            if (navRequest.url
                .startsWith(GithubAuthenticator.redirectedUrl.toString())) {
              widget.onAuthorizationCode(
                Uri.parse(navRequest.url),
              );
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
          //http://localhost:3000/callback?code=9e4d9cbe3d49f925ccda
        ),
      ),
    );
  }
}
