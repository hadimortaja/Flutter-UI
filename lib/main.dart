import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/auth/login.dart';
import 'package:flutter_ui/screens/home.dart';
import 'package:flutter_ui/screens/map.dart';
import 'package:flutter_ui/screens/membershipTransactions.dart';
import 'package:flutter_ui/screens/notification_2.dart';
import 'package:flutter_ui/screens/voucher_details.dart';
import 'package:flutter_ui/screens/welcome.dart';
import 'package:flutter_ui/screens/widgets/scrollBehavior.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: ScrollConfiguration(
              behavior: MyBehavior(),
              child: child,
            ),
          );
        },
        home: Welcome(),
      ),
    );
  }
  // Loading is done, return the app:

}
