import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/widgets/constants.dart';
import 'package:flutter_ui/screens/widgets/custom_drawer.dart';
import 'package:flutter_ui/screens/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class VoucherDetails extends StatefulWidget {
  @override
  _VoucherDetailsState createState() => _VoucherDetailsState();
}

class _VoucherDetailsState extends State<VoucherDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'Voucher',
          fontSize: 20.sp,
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
      // drawer: customDrawer(),
      body: ListView(children: [
        Container(
          height: 300.h,
          decoration: BoxDecoration(
            gradient: new LinearGradient(
                colors: [Color(0xFF00A98B), Color(0xFF00E0B8)],
                stops: [0.2, 1.0],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                tileMode: TileMode.repeated),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 8.h, right: 8.w, left: 8.w),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  // IconButton(
                  //   onPressed: () => Get.back(),
                  //   icon: Icon(Icons.arrow_back,
                  //       color: Colors.white, size: 26.sp),
                  // ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 28.h, left: 16.w, bottom: 22.h),
                    child: CustomText(
                        text: '10%',
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: CustomText(
                        text: 'Cashback',
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h, top: 19.h),
                    child: CustomText(
                        text: 'Aug 17-23',
                        fontSize: 16.sp,
                        color: Colors.white),
                  ),
                ]),
                Image.asset('assets/images/product.png', width: 200.w),
              ]),
              Padding(
                padding: EdgeInsets.only(top: 20.h, right: 12.w),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  CustomText(
                      text: 'Terms & conditions applied',
                      color: Colors.white,
                      fontSize: 16.sp)
                ]),
              ),
            ]),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12.0),
              topLeft: Radius.circular(12.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 22.w, right: 22.w, top: 22.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomText(
                  text: 'What\'s inside',
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp),
              Padding(
                padding: EdgeInsets.only(top: 12.h, bottom: 28.h),
                child: CustomText(
                    text:
                        'A limited time 10% cashback on every product you buy on website',
                    color: textColor,
                    height: 1.3),
              ),
              CustomText(
                  text: 'What\'s inside',
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp),
              Padding(
                padding: EdgeInsets.only(top: 12.h, bottom: 12.h),
                child: CustomText(
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit Lorem ipsum dolor sit amet, consectetur adipiscing elit Lorem ipsum dolor sit amet, consectetur adipiscing elit Lorem ipsum dolor sit amet, consectetur adipiscing elit Lorem ipsum dolor sit amet, consectetur adipiscing elit ',
                  color: textColor,
                  height: 1.4,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 18.h, top: 22.h),
                child: Row(children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2 - 22,
                    height: 60.0.h,
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
                      Image.asset('assets/images/gift.png'),
                      SizedBox(width: 10.w),
                      CustomText(
                          text: 'Voucher Name',
                          color: mainColor,
                          fontSize: 16.sp)
                    ]),
                  ),
                  Flexible(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2 - 22,
                      height: 60.h,
                      decoration: new BoxDecoration(
                        image: DecorationImage(
                          image: new AssetImage('assets/images/Subtract.png'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: CustomText(
                            text: '5TG623MN',
                            color: Colors.white,
                            fontSize: 16.sp),
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 50.h,
              )
            ]),
          ),
        ),
      ]),
    );
  }
}
