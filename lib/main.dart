import 'package:flutter/material.dart';
import 'package:github_client/core/presentaion/my_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyWidget(),
    ),
  );
}
