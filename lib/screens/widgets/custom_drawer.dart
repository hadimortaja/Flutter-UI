import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/privacy_policy.dart';
import 'package:flutter_ui/screens/terms_conditions.dart';
import 'package:flutter_ui/screens/widgets/constants.dart';
import 'package:flutter_ui/screens/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

customDrawer() {
  return Drawer(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.only(left: 10.w, right: 22.w, top: 55.w, bottom: 26.h),
          child: Row(children: [
            Image.asset('assets/images/image.png', width: 60.w),
            SizedBox(width: 8.w),
            CustomText(
              text: 'Hello, Guest!',
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ]),
        ),
        Container(
          height: 60.0,
          padding: EdgeInsets.only(left: 22.w),
          decoration: BoxDecoration(
            color: mainColor.withOpacity(0.2),
            border: Border(
                left: BorderSide(
              color: mainColor,
            )),
          ),
          child: Row(children: [
            Icon(Icons.person, color: mainColor, size: 30.h),
            CustomText(text: 'View profile', color: mainColor, fontSize: 16.sp),
          ]),
        ),
        Container(
          height: 60.0.h,
          padding: EdgeInsets.only(left: 22.w),
          // decoration: BoxDecoration(
          //   color: mainColor.withOpacity(0.2),
          //   border: Border(
          //     left: BorderSide(color: mainColor, width: 7.w)
          //   ),
          // ),
          child: Row(children: [
            Icon(Icons.settings, color: mainColor, size: 30.h),
            SizedBox(width: 5.w),
            CustomText(
                text: 'Change password', color: mainColor, fontSize: 16.sp),
          ]),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 12.0),
          child: Container(
            height: 60.0.h,
            padding: EdgeInsets.only(left: 22.w),
            // decoration: BoxDecoration(
            //   color: mainColor.withOpacity(0.2),
            //   border: Border(
            //     left: BorderSide(color: mainColor, width: 7.w)
            //   ),
            // ),
            child: Row(children: [
              SizedBox(
                width: 2.w,
              ),
              // Icon(Icons.person_pin, color: mainColor, size: 38),
              Image.asset('assets/images/people.png'),
              SizedBox(width: 5.w),
              CustomText(
                  text: 'Tell a friend', color: mainColor, fontSize: 16.sp),
            ]),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 80.h, left: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(TermsConditions());
                },
                child: CustomText(
                    text: 'Terms & conditions',
                    color: mainColor,
                    fontSize: 16.sp),
              ),
              SizedBox(
                height: 25.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(PrivacyPolicy());
                },
                child: CustomText(
                    text: 'Privacy policy', color: mainColor, fontSize: 16.sp),
              ),
            ],
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
                padding: EdgeInsets.only(left: 22.w, bottom: 14.h),
                child: Row(
                  children: [
                    Icon(Icons.exit_to_app, color: mainColor),
                    SizedBox(width: 8.w),
                    CustomText(
                        text: 'Log out',
                        color: mainColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ],
                )),
          ),
        ),
      ],
    ),
  );
}
