import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NoContentDisplayPage extends StatelessWidget {
  final String msg;
  const NoContentDisplayPage({
    Key? key,
    required this.msg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 10.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              MdiIcons.emoticonPoop,
              size: 90.sp,
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              msg,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontSize: 18.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
