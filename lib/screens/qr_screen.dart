import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/widgets/custom_text.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QrScreen extends StatefulWidget {
  @override
  _QrScreenState createState() => _QrScreenState();
}

class _QrScreenState extends State<QrScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            color: Color(0xff00A98B),
          ),
          Column(children: [
            SizedBox(
              height: 120.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                    text: "Scan QR Code",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ],
            ),
            SizedBox(
              height: 114.h,
            ),
            CustomText(
              text: 'Posotion the QR code within the frame',
              fontSize: 15.sp,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w600,
            ),
            SizedBox(
              height: 20.h,
            ),
            Image.asset(
              "assets/images/center.png",
              height: 250.h,
              width: 250.w,
            ),
            SizedBox(
              height: 50.h,
            ),
            Container(
              width: 320.w,
              height: 45.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r)),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 15.w),
                    hintText: "Enter Code",
                    hintStyle: TextStyle(fontSize: 14.sp)),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 45.h,
                width: 320.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  gradient: LinearGradient(
                    begin: Alignment(-0.92, -1.0),
                    end: Alignment(0.17, 1.0),
                    colors: [
                      const Color(0xff00a98b),
                      const Color(0xff00a98b),
                      const Color(0xff00e0b8)
                    ],
                    stops: [0.0, 0.0, 1.0],
                  ),
                ),
                child: Center(
                  child: CustomText(
                    text: "Enter code",
                    color: Colors.white,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
          ])
        ],
      ),
    );
  }
}
