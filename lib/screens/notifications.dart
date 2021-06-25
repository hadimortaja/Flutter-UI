import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/widgets/constants.dart';
import 'package:flutter_ui/screens/widgets/custom_drawer.dart';
import 'package:flutter_ui/screens/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
            text: 'Notifications', fontSize: 20.sp, color: mainColor),
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
      body: Padding(
        padding: EdgeInsets.only(left: 14.w, right: 14.w, top: 28.h),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 22.h),
              child: Column(
                children: [
                  Row(children: [
                    Stack(
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          width: 35.w,
                          height: 35.h,
                        ),
                        Positioned(
                          top: 0.0,
                          child: Container(
                            width: 10.0.w,
                            height: 10.0.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                            text: 'Suprise!',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold),
                        SizedBox(height: 8.h),
                        CustomText(
                          text: 'Cashback: 20 points',
                          fontSize: 14.sp,
                        )
                      ],
                    ),
                    Spacer(),
                    CustomText(
                      text: 'FRI',
                      color: mainColor,
                      fontSize: 14.sp,
                    ),
                  ]),
                  Divider(color: mainColor, height: 30.h),
                ],
              ),
            ),
            Item(
              text: "Alert!",
            ),
            Item(
              text: "Congratulation!",
            ),
            Item(
              text: "Message",
            ),
            Item(
              text: "Alert!",
            ),
            Item(
              text: "Alert!",
            ),
            Item(
              text: "Alert!",
            ),
            Item(
              text: "Alert!",
            ),
          ],
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  final String text;
  Item({this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 22.h),
      child: Column(
        children: [
          Row(children: [
            Image.asset(
              'assets/images/logo.png',
              height: 35.h,
              width: 35.w,
            ),
            SizedBox(
              width: 20.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    text: text, fontSize: 16.sp, fontWeight: FontWeight.bold),
                SizedBox(height: 8.h),
                CustomText(
                  text: 'Cashback: 20 points',
                  fontSize: 14.sp,
                )
              ],
            ),
            Spacer(),
            CustomText(
              text: '15/07',
              color: mainColor,
              fontSize: 14.sp,
            ),
          ]),
          Divider(color: mainColor, height: 30.h),
        ],
      ),
    );
  }
}
