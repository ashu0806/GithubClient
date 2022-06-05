import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> showNoConnectionToast(
  String msg,
  BuildContext context,
) async {
  await showFlash(
    context: context,
    duration: const Duration(
      seconds: 2,
    ),
    builder: (context, controller) {
      return Flash.dialog(
        controller: controller,
        margin: const EdgeInsets.all(
          10.0,
        ),
        backgroundColor: Colors.black.withOpacity(
          0.9,
        ),
        borderRadius: BorderRadius.circular(
          10.r,
        ),
        child: Padding(
          padding: const EdgeInsets.all(
            10.0,
          ),
          child: Text(
            msg,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      );
    },
  );
}
