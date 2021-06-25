import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/widgets/constants.dart';
import 'package:flutter_ui/screens/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Notifications2 extends StatefulWidget {
  @override
  _Notifications2State createState() => _Notifications2State();
}

class _Notifications2State extends State<Notifications2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: mainColor,
      body: Container(
        color: mainColor,
        child: ListView(children: [
          Padding(
            padding: EdgeInsets.only(left: 18.w, right: 18.w, top: 18.h),
            child: Row(
              children: [
                IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 18.h),
            child: Column(children: [
              Image.asset('assets/images/logo3.png'),
              CustomText(
                  text: 'Store',
                  fontWeight: FontWeight.bold,
                  fontSize: 32.sp,
                  color: Colors.white),
              Padding(
                padding: EdgeInsets.only(top: 36.h, bottom: 14.h),
                child: CustomText(
                    text: 'Congratulation!',
                    fontWeight: FontWeight.bold,
                    fontSize: 24.sp,
                    color: Colors.white),
              ),
              CustomText(
                  text: 'you have new points!',
                  fontWeight: FontWeight.bold,
                  fontSize: 24.sp,
                  color: Colors.white),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 32.w, right: 32.w, top: 50.h, bottom: 24.h),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                            text: 'Store',
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp),
                        CustomText(
                            text: '29 June, 6:45 p.m',
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                            color: mainColor),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                            text: 'Your purchase amount', fontSize: 16.sp),
                        CustomText(
                            text: '\$1350',
                            fontWeight: FontWeight.bold,
                            fontSize: 17.sp,
                            color: mainColor),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(text: 'Your points amount', fontSize: 16.sp),
                        CustomText(
                            text: '\$135',
                            fontWeight: FontWeight.bold,
                            fontSize: 17.sp,
                            color: mainColor),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
