import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui/screens/map.dart';
import 'package:flutter_ui/screens/membershipTransactions.dart';
import 'package:flutter_ui/screens/notifications.dart';
import 'package:flutter_ui/screens/qr_screen.dart';
import 'package:flutter_ui/screens/widgets/constants.dart';
import 'package:flutter_ui/screens/widgets/custom_drawer.dart';
import 'package:flutter_ui/screens/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Membership extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            CustomText(text: 'Membership', fontSize: 20.0.sp, color: mainColor),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 14.w),
            child: GestureDetector(
                onTap: () {
                  Get.to(Notifications());
                },
                child: Icon(Icons.notifications_outlined,
                    color: mainColor, size: 30)),
          )
        ],
        iconTheme: IconThemeData(color: mainColor),
      ),
      drawer: customDrawer(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 14.w, right: 14.w, top: 34.h),
            child: Container(
              height: 180.h,
              decoration: BoxDecoration(
                color: mainColor,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: -80.0,
                    right: -30.0,
                    child: ClipOval(
                      child: Container(
                        height: 150.h,
                        width: 220.w,
                        decoration: BoxDecoration(
                          color: Color(0xFF02987e),
                          borderRadius: BorderRadius.circular(500.0),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -90.0,
                    left: -30.0,
                    child: ClipOval(
                      child: Container(
                        height: 150.h,
                        width: 220.w,
                        decoration: BoxDecoration(
                          color: Color(0xFF02987e),
                          borderRadius: BorderRadius.circular(500.0),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30.h,
                    left: 15.w,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                              text: 'Name Surname',
                              color: Colors.white,
                              fontSize: 18.sp),
                          SizedBox(height: 8.h),
                          CustomText(
                              text: 'Loyalty Card',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ]),
                  ),
                  Positioned(
                    top: 30.h,
                    right: 15.w,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                              text: 'Point',
                              color: Colors.white,
                              fontSize: 18.sp),
                          SizedBox(height: 8.h),
                          CustomText(
                              text: '\$ 200',
                              fontSize: 16.sp,
                              color: Colors.white),
                        ]),
                  ),
                  Positioned(
                    bottom: 30.h,
                    left: 15.w,
                    child: Container(
                      width: 80.w,
                      height: 25.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: mainColor,
                              size: 20.h,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 7.h,
                                ),
                                CustomText(
                                  text: 'BASIC',
                                  color: mainColor,
                                  fontSize: 14.sp,
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ),
                  Positioned(
                    bottom: 30.h,
                    right: 15.w,
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 327.w,
                                    height: 402.w,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20.r),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 15.h, right: 20.w),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              GestureDetector(
                                                onTap: () => Get.back(),
                                                child: Icon(
                                                  Icons.close,
                                                  size: 20.h,
                                                  color: mainColor,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        CustomText(
                                          text: "Voucher Number:",
                                          color: Colors.grey,
                                          fontSize: 16.sp,
                                        ),
                                        SizedBox(
                                          height: 30.h,
                                        ),
                                        Icon(
                                          Icons.qr_code_2_outlined,
                                          size: 180.h,
                                        ),
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Image.asset(
                                          'assets/images/qr.png',
                                          width: 255.w,
                                          height: 70.h,
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        CustomText(
                                          text: "5TG623MN",
                                          fontSize: 18.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            });
                      },
                      child: Icon(Icons.qr_code_2_outlined,
                          color: Colors.white, size: 50.h),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 34.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              GestureDetector(
                onTap: () => Get.to(QrScreen()),
                child: Container(
                    width: MediaQuery.of(context).size.width / 4,
                    height: 110.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: mainColor.withOpacity(0.15),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(children: [
                      // Padding(
                      //   padding: EdgeInsets.only(top: 14.h),
                      //   child: Image.asset('assets/images/qrcode-scan.png'),
                      // ),
                      Padding(
                        padding: EdgeInsets.only(top: 14.h),
                        child:
                            Icon(Icons.qr_code_2, color: mainColor, size: 34),
                      ),
                      SizedBox(height: 10.h),
                      Column(
                        children: [
                          CustomText(
                              text: 'Scan', color: mainColor, fontSize: 13.sp),
                          CustomText(
                              text: 'QR code',
                              color: mainColor,
                              fontSize: 13.sp),
                        ],
                      ),
                    ])),
              ),
              SizedBox(
                width: 30.w,
              ),
              Container(
                  width: MediaQuery.of(context).size.width / 4,
                  height: 110.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: mainColor.withOpacity(0.15),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.only(top: 14.h),
                      child:
                          Icon(Icons.star_outline, color: mainColor, size: 34),
                    ),
                    SizedBox(height: 10.h),
                    Column(
                      children: [
                        CustomText(
                            text: 'Convert', color: mainColor, fontSize: 13.sp),
                        CustomText(
                            text: 'points', color: mainColor, fontSize: 13.sp),
                      ],
                    ),
                  ])),
              SizedBox(
                width: 30.w,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => Map());
                },
                child: Container(
                    width: MediaQuery.of(context).size.width / 4,
                    height: 110.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: mainColor.withOpacity(0.15),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.only(top: 14.h),
                        child: Icon(Icons.location_on_outlined,
                            color: mainColor, size: 34),
                      ),
                      SizedBox(height: 10.h),
                      Column(
                        children: [
                          CustomText(
                              text: 'Places',
                              color: mainColor,
                              fontSize: 13.sp),
                          CustomText(
                              text: 'nearby',
                              color: mainColor,
                              fontSize: 13.sp),
                        ],
                      ),
                    ])),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 14.w, top: 34.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      text: 'NEW EVENT',
                      color: mainColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp),
                  CustomText(
                    text: 'VIEW ALL',
                    color: mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                    decoration: TextDecoration.underline,
                  ),
                ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: 22.h),
            child: Container(
              height: 141.0.h,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 14.w, right: 14.w),
                      child: Container(
                        width: 225.w,
                        decoration: new BoxDecoration(
                          image: DecorationImage(
                            image: new AssetImage('assets/images/event_1.jpg'),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    Container(
                      width: 225.w,
                      decoration: new BoxDecoration(
                        image: DecorationImage(
                          image: new AssetImage('assets/images/event_2.jpg'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(10.0.r),
                      ),
                    ),
                  ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.w, right: 14.w, top: 34.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      text: 'NEW VOUCHERS',
                      color: mainColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => MembershipTransactions());
                    },
                    child: CustomText(
                      text: 'VIEW ALL',
                      color: mainColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ]),
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2 - 22,
                  height: 60.h,
                  decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [Colors.white, mainColor.withOpacity(0.2)],
                        stops: [0.2, 1.0],
                        begin: FractionalOffset.centerLeft,
                        end: FractionalOffset.centerRight,
                        tileMode: TileMode.repeated),
                    // borderRadius: BorderRadius.circular(10.0),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Row(children: [
                    Image.asset(
                      'assets/images/image.png',
                      height: 50.h,
                      width: 50.w,
                    ),
                    SizedBox(width: 10.w),
                    CustomText(
                        text: 'Voucher Name', color: mainColor, fontSize: 14.sp)
                  ]),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2 - 22,
                  height: 60.h,
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: new AssetImage('assets/images/Subtract.png'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                            text: '15%', color: Colors.white, fontSize: 14.sp),
                        SizedBox(width: 10.w),
                        CustomText(
                            text: 'Reward',
                            color: Colors.white,
                            fontSize: 14.sp),
                      ]),
                ),
              ]),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2 - 22,
                  height: 60.h,
                  decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [Colors.white, mainColor.withOpacity(0.2)],
                        stops: [0.2, 1.0],
                        begin: FractionalOffset.centerLeft,
                        end: FractionalOffset.centerRight,
                        tileMode: TileMode.repeated),
                    // borderRadius: BorderRadius.circular(10.0),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Row(children: [
                    Image.asset(
                      'assets/images/image.png',
                      height: 50.h,
                      width: 50.w,
                    ),
                    SizedBox(width: 10.w),
                    CustomText(
                        text: 'Voucher Name', color: mainColor, fontSize: 14.sp)
                  ]),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2 - 22,
                  height: 60.h,
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: new AssetImage('assets/images/Subtract.png'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                            text: '15%', color: Colors.white, fontSize: 14.sp),
                        SizedBox(width: 10.w),
                        CustomText(
                            text: 'Reward',
                            color: Colors.white,
                            fontSize: 14.sp),
                      ]),
                ),
              ]),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
        ],
      ),
    );
  }
}
