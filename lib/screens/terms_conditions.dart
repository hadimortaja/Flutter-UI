import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/widgets/constants.dart';
import 'package:flutter_ui/screens/widgets/custom_text.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsConditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Terms & Conditions",
          style: TextStyle(fontSize: 22.sp, color: mainColor),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 12.h),
        child: ListView(children: [
          Padding(
            padding: EdgeInsets.only(right: 22.w, left: 22.w, top: 18.h),
            child: CustomText(
                text:
                    'Lorem ips ipsum dolor ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. ',
                fontSize: 16.sp,
                color: textColor),
          ),
          Padding(
            padding: EdgeInsets.only(right: 22.w, left: 22.w, top: 18.h),
            child: CustomText(
                text:
                    'Lorem ips ipsum dolor ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. ',
                fontSize: 16.sp,
                color: textColor),
          ),
          Padding(
            padding: EdgeInsets.only(right: 22.w, left: 22.w, top: 18.h),
            child: CustomText(
                text:
                    'Lorem ips ipsum dolor ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. ',
                fontSize: 16.sp,
                color: textColor),
          ),
          Padding(
            padding: EdgeInsets.only(right: 22.w, left: 22.w, top: 18.h),
            child: CustomText(
                text:
                    'Lorem ips ipsum dolor ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.Lorem ips ipsum dolor ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.Lorem ips ipsum dolor ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.Lorem ips ipsum dolor ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. ',
                fontSize: 16.sp,
                color: textColor),
          ),
        ]),
      ),
    );
  }
}
