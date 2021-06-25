import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/notifications.dart';
import 'package:flutter_ui/screens/voucher_details.dart';
import 'package:flutter_ui/screens/widgets/constants.dart';
import 'package:flutter_ui/screens/widgets/custom_drawer.dart';
import 'package:flutter_ui/screens/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: CustomText(text: 'Events', fontSize: 20.sp, color: mainColor),
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          actions: [
            GestureDetector(
              onTap: () => Get.to(Notifications()),
              child: Padding(
                padding: EdgeInsets.only(right: 14.w),
                child: Icon(Icons.notifications_outlined,
                    color: mainColor, size: 30),
              ),
            )
          ],
          iconTheme: IconThemeData(color: mainColor),
        ),
        drawer: customDrawer(),
        body: SizedBox(
          width: Get.width,
          child: ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(top: 25.h),
                child: EventItem(),
              );
            },
            itemCount: 5,
          ),
        ));
  }
}

class EventItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Get.to(VoucherDetails());
          },
          child: Container(
            height: 220.h,
            width: 315.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(4.0),
                bottomLeft: Radius.circular(4.0),
              ),
              gradient: LinearGradient(
                begin: Alignment(-1.0, -1.0),
                end: Alignment(1.25, 1.46),
                colors: [const Color(0xffffffff), const Color(0xffe5fffb)],
                stops: [0.0, 1.0],
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x1c006452),
                  offset: Offset(0, 4),
                  blurRadius: 24,
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100.h,
                      width: 225.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.r),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/event_1.jpg"))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Row(
                        children: [
                          CustomText(
                            text: "Event Name",
                            fontSize: 15.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          Spacer(),
                          Image.asset(
                            "assets/images/calendar.png",
                            height: 16.h,
                            width: 16.w,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          CustomText(
                            text: "Event Name",
                            fontSize: 12.sp,
                            color: mainColor,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Row(
                        children: [
                          CustomText(
                            text: "New collection",
                            fontSize: 12.sp,
                            color: mainColor,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Row(
                        children: [
                          CustomText(
                            text: "Spring - summer 2021",
                            fontSize: 12.sp,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
