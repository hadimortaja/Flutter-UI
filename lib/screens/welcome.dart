import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/auth/login.dart';
import 'package:flutter_ui/screens/widgets/constants.dart';
import 'package:flutter_ui/screens/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
    var delay = Duration(seconds: 3);

    Future.delayed(delay, () {
      Get.offAll(() => Login());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
              text: 'Welcome',
              color: mainColor,
              fontSize: 36.sp,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 35.h),
            Center(
              child: LinearPercentIndicator(
                width: 240.0,
                alignment: MainAxisAlignment.center,
                lineHeight: 8.0,
                percent: 0.5,
                linearStrokeCap: LinearStrokeCap.roundAll,
                backgroundColor: mainColor.withOpacity(0.3),
                progressColor: mainColor,
              ),
            ),
            SizedBox(height: 20.h),
            CustomText(text: '40%', color: mainColor, fontSize: 28.sp),
          ],
        ),
      ),
    );
  }
}
