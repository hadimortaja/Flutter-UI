import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/widgets/constants.dart';
import 'package:flutter_ui/screens/widgets/custom_drawer.dart';
import 'package:flutter_ui/screens/widgets/custom_raised_gradient_button.dart';
import 'package:flutter_ui/screens/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StoreDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'Store',
          fontSize: 20.0.sp,
          color: mainColor,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 14.w),
            child:
                Icon(Icons.notifications_outlined, color: mainColor, size: 30),
          )
        ],
        iconTheme: IconThemeData(color: mainColor),
      ),
      drawer: customDrawer(),
      body: ListView(
        children: [
          Image.asset(
            'assets/images/event_1.jpg',
            height: 250.h,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 22.h),
            child: CustomText(
                text: 'Store', fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 12.h),
            child: CustomText(
                text: 'Official sportswear store',
                color: textColor,
                fontSize: 17.sp),
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 22.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                    text: 'Address',
                    color: mainColor,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold),
                SizedBox(width: 12.w),
                CustomText(
                    text: 'VIEW ON THE MAP',
                    color: mainColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 26.w, right: 26.w, top: 22.h, bottom: 8.h),
            child: CustomText(
                text: 'One Dowerman Drive', color: mainColor, fontSize: 13.sp),
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.w, right: 26.w),
            child: CustomText(
                text: 'Beaverton, OR 97005', color: mainColor, fontSize: 13.sp),
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 22.h),
            child: CustomText(
                text: '7:30 a.m.- 5:30 p.m, Monday - Friday',
                color: textColor,
                fontSize: 13.sp),
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 22.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Icon(Icons.phone, color: mainColor, size: 28.sp),
                  SizedBox(width: 8.w),
                  CustomText(
                      text: '1-503-671-6543',
                      color: mainColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ]),
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.facebook,
                      color: mainColor,
                      size: 25.h,
                    ),
                    SizedBox(width: 6.w),
                    FaIcon(FontAwesomeIcons.twitter, color: mainColor),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 12.h),
            child: Row(children: [
              FaIcon(FontAwesomeIcons.globe, color: mainColor),
              SizedBox(width: 8.w),
              CustomText(
                  text: 'WWW.STORE.COM/',
                  color: mainColor,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 60.h),
            child: RaisedGradientButton(
              onPressed: () {},
              child: CustomText(
                  text: 'VIEW OFFERS',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp),
              gradient: new LinearGradient(
                  colors: [Color(0xFF00A98B), Color(0xFF00E0B8)],
                  stops: [0.2, 1.0],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                  tileMode: TileMode.repeated),
            ),
          ),
        ],
      ),
    );
  }
}
