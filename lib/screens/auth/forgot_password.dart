import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/widgets/constants.dart';
import 'package:flutter_ui/screens/widgets/custom_text.dart';
import 'package:flutter_ui/screens/widgets/custom_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  GlobalKey<FormState> _form = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();

  sendLink() {
    var formData = _form.currentState;
    if (formData.validate()) {
      print('true');
      Get.snackbar('', '',
          backgroundColor: Colors.white,
          titleText: Row(
            children: [
              Image.asset('assets/images/logo.png'),
              SizedBox(width: 12.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: 'Your password', fontSize: 17.sp),
                  SizedBox(height: 7.h),
                  CustomText(text: 'successfully changed', fontSize: 17.sp)
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
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]);
      formData.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setHeight(20)),
        child: Form(
          key: _form,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: ScreenUtil().setHeight(100)),
                child: Center(
                    child: CustomText(
                  text: 'Forgot Password',
                  color: mainColor,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                )),
              ),
              SizedBox(height: 35.h),
              CustomText(
                text: 'EMAIL',
                color: textColor,
                fontSize: 14.sp,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: ScreenUtil().setHeight(8),
                    bottom: ScreenUtil().setHeight(8)),
                child: buildTextFormField(
                    'Enter your email', false, _emailController, 'email'),
              ),
              CustomText(
                text: 'WE WILL SEND A LINK TO YOUR MAIL TO RESET YOUR PASSWORD',
                color: textColor,
                textAlign: TextAlign.center,
                height: 1.8,
                fontSize: 14.sp,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: ScreenUtil().setHeight(16),
                    bottom: ScreenUtil().setHeight(14)),
                child: ElevatedButton(
                  child: CustomText(
                    text: 'SEND LINK',
                    fontSize: 14.sp,
                    color: Color(0xFFAFAFAF),
                  ),
                  onPressed: sendLink,
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFE5E5E5),
                    elevation: 0,
                    fixedSize: Size(650.0, 50.0),
                    // padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 100.w),
                    textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
