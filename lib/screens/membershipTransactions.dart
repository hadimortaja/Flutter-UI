import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/notifications.dart';
import 'package:flutter_ui/screens/widgets/constants.dart';
import 'package:flutter_ui/screens/widgets/custom_drawer.dart';
import 'package:flutter_ui/screens/widgets/custom_raised_gradient_button.dart';
import 'package:flutter_ui/screens/widgets/custom_text.dart';
import 'package:flutter_ui/screens/widgets/custom_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MembershipTransactions extends StatefulWidget {
  @override
  _MembershipTransactionsState createState() => _MembershipTransactionsState();
}

class _MembershipTransactionsState extends State<MembershipTransactions> {
  GlobalKey<FormState> _form = GlobalKey<FormState>();

  TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            CustomText(text: 'Membership', fontSize: 22.0.sp, color: mainColor),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(Notifications());
            },
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
      body: Form(
        key: _form,
        child: ListView(children: [
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
                              fontSize: 19.sp,
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
                              fontSize: 18.sp,
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
                            Icon(Icons.star, color: mainColor),
                            CustomText(
                              text: 'BASIC',
                              color: mainColor,
                              fontSize: 16.sp,
                            ),
                          ]),
                    ),
                  ),
                  Positioned(
                    bottom: 30.h,
                    right: 15.w,
                    child: Icon(Icons.qr_code_2_outlined,
                        color: Colors.white, size: 50),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 14.w, right: 14.w, top: 34.h, bottom: 8.h),
            child: CustomText(
              text: 'AMOUNT',
              color: textColor,
              fontSize: 14.sp,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.w, right: 14.w),
            child: buildTextFormField(
                'Enter amount of points', false, _amountController, 'amount'),
          ),
          Center(
            child: Image.asset('assets/images/Swap.png'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.w, right: 14.w, top: 14.h),
            child: buildTextFormField(
                'Enter amount of points', false, _amountController, 'amount'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.w, right: 18.w, top: 6.h),
            child: Center(
                child: CustomText(
              text:
                  'You can convert points to voucher and going to use it in store',
              color: textColor,
              fontSize: 14.sp,
            )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.w, right: 14.w, top: 18.h),
            child: Container(
              // height: 350.0,
              child: ListView(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                children: [
                  SizedBox(
                    height: 60.h,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                        Image.asset(
                          'assets/images/gift.png',
                          height: 50.h,
                          width: 50.w,
                        ),
                        SizedBox(width: 10.w),
                        CustomText(
                            text: 'Voucher Name',
                            color: mainColor,
                            fontSize: 14.sp)
                      ]),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2 - 22,
                      height: 60.0.h,
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
                            fontSize: 14.sp),
                      ),
                    ),
                  ]),
                  Padding(
                    padding: EdgeInsets.only(top: 80.h),
                    child: RaisedGradientButton(
                      child: CustomText(
                          text: 'CONVERT',
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold),
                      gradient: new LinearGradient(
                          colors: [Color(0xFF00A98B), Color(0xFF00E0B8)],
                          stops: [0.2, 1.0],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                          tileMode: TileMode.repeated),
                      onPressed: () {
                        Get.snackbar('', '',
                            backgroundColor: Colors.white,
                            titleText: Row(
                              children: [
                                Image.asset('assets/images/logo.png'),
                                SizedBox(width: 12.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                        text: 'Successfully transaction',
                                        fontSize: 17.sp),
                                    SizedBox(height: 7.h),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomText(
                                              text: '01/06/2021',
                                              fontSize: 17.sp),
                                          SizedBox(width: 12.w),
                                          CustomText(
                                              text: '\$100', fontSize: 17.sp),
                                        ]),
                                  ],
                                ),
                              ],
                            ),
                            // icon: Icon(Icons.phone),
                            boxShadows: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ]);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
