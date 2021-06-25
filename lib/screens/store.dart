import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/store_details.dart';
import 'package:flutter_ui/screens/widgets/constants.dart';
import 'package:flutter_ui/screens/widgets/custom_drawer.dart';
import 'package:flutter_ui/screens/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'notifications.dart';

class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'Store',
          fontSize: 20.sp,
          color: mainColor,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () => Get.to(Notifications()),
            child: Padding(
              padding: EdgeInsets.only(right: 14.w),
              child: Icon(Icons.notifications_outlined,
                  color: mainColor, size: 30.h),
            ),
          )
        ],
        iconTheme: IconThemeData(color: mainColor),
      ),
      drawer: customDrawer(),
      body: Padding(
        padding: EdgeInsets.only(top: 14.h, right: 26.sp, left: 25.sp),
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, int item) {
            return Padding(
              padding: EdgeInsets.only(bottom: 14.w),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4.0),
                    bottomRight: Radius.circular(4.0),
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
                child: Padding(
                  padding: EdgeInsets.only(right: 22.w),
                  child: Row(children: [
                    Image.asset('assets/images/logo2.png'),
                    SizedBox(
                      width: 15.w,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                              text: 'Store Name',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold),
                          SizedBox(height: 10.h),
                          CustomText(
                              text: 'Address',
                              color: mainColor,
                              fontSize: 15.sp),
                        ]),
                    InkWell(
                      onTap: () {
                        Get.to(StoreDetails());
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 80.h, left: 49.w),
                        child: Container(
                          height: 24.h,
                          width: 63.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              border: Border.all(color: mainColor)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                  text: 'View',
                                  color: mainColor,
                                  fontSize: 12.sp),
                              SizedBox(
                                width: 5.w,
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  size: 14.sp, color: mainColor)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
// Adobe XD layer: 'Rectangle 467' (shape)
