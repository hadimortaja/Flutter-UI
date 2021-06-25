import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/auth/forgot_password.dart';
import 'package:flutter_ui/screens/auth/login.dart';
import 'package:flutter_ui/screens/widgets/constants.dart';
import 'package:flutter_ui/screens/widgets/custom_text.dart';
import 'package:flutter_ui/screens/widgets/custom_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  GlobalKey<FormState> _login = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _surController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _nricController = TextEditingController();
  TextEditingController _memberController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;

  register() {
    var formData = _login.currentState;
    if (formData.validate()) {
      print('true');
      formData.save();
    }
  }

  @override
  void initState() {
    _passwordVisible = false;
    _confirmPasswordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setHeight(20)),
        child: Form(
          key: _login,
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: ScreenUtil().setHeight(60)),
                child: Center(
                    child: CustomText(
                  text: 'Create An Account',
                  color: mainColor,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                )),
              ),
              SizedBox(height: 35.h),
              CustomText(
                text: 'NAME',
                color: textColor,
                fontSize: 13.sp,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: ScreenUtil().setHeight(8),
                    bottom: ScreenUtil().setHeight(8)),
                child: buildTextFormField(
                    'Enter your name', false, _nameController, 'name'),
              ),
              CustomText(
                text: 'SURNAME',
                color: textColor,
                fontSize: 13.sp,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: ScreenUtil().setHeight(8),
                    bottom: ScreenUtil().setHeight(8)),
                child: buildTextFormField(
                    'Enter your surname', false, _surController, 'surname'),
              ),
              CustomText(
                text: 'EMAIL',
                color: textColor,
                fontSize: 13.sp,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: ScreenUtil().setHeight(8),
                    bottom: ScreenUtil().setHeight(8)),
                child: buildTextFormField(
                    'Enter your email', false, _emailController, 'email'),
              ),
              CustomText(
                text: 'PHONE NUMBER',
                color: textColor,
                fontSize: 13.sp,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: ScreenUtil().setHeight(8),
                    bottom: ScreenUtil().setHeight(8)),
                child: buildTextFormField('Enter your phone number', false,
                    _phoneController, 'phone'),
              ),
              CustomText(
                text: 'NRIC NUMBER',
                color: textColor,
                fontSize: 13.sp,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: ScreenUtil().setHeight(8),
                    bottom: ScreenUtil().setHeight(8)),
                child: buildTextFormField(
                    'Enter your nric number', false, _nricController, 'nric'),
              ),
              CustomText(
                text: 'MEMBER NUMBER',
                color: textColor,
                fontSize: 13.sp,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: ScreenUtil().setHeight(8),
                    bottom: ScreenUtil().setHeight(8)),
                child: buildTextFormField('Enter your member number', false,
                    _memberController, 'member'),
              ),
              CustomText(
                text: 'PASSWORD',
                color: textColor,
                fontSize: 13.sp,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: ScreenUtil().setHeight(8),
                    bottom: ScreenUtil().setHeight(16)),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: _passwordController,
                  obscureText: !_passwordVisible,
                  validator: (value) {
                    if (value.trim().isEmpty) {
                      return "password can't to be empty";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 14.sp),
                    contentPadding: const EdgeInsets.all(8.0),
                    hintText: 'Enter your password',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            color: Colors.grey.withOpacity(0.5),
                            style: BorderStyle.solid)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: Colors.grey.withOpacity(0.5),
                          style: BorderStyle.solid),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: Colors.red.withOpacity(0.5),
                          style: BorderStyle.solid),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: Colors.red.withOpacity(0.5),
                          style: BorderStyle.solid),
                    ),
                    // Here is key idea
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: mainColor,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              CustomText(
                text: 'CONFIRM PASSWORD',
                color: textColor,
                fontSize: 13.sp,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: ScreenUtil().setHeight(8),
                    bottom: ScreenUtil().setHeight(8)),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: _confirmPasswordController,
                  obscureText: !_confirmPasswordVisible,
                  validator: (value) {
                    if (value.trim().isEmpty) {
                      return "password can't to be empty";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 14.sp),

                    contentPadding: const EdgeInsets.all(8.0),
                    hintText: 'Enter your password',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            color: Colors.grey.withOpacity(0.5),
                            style: BorderStyle.solid)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: Colors.grey.withOpacity(0.5),
                          style: BorderStyle.solid),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: Colors.red.withOpacity(0.5),
                          style: BorderStyle.solid),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: Colors.red.withOpacity(0.5),
                          style: BorderStyle.solid),
                    ),
                    // Here is key idea
                    suffixIcon: IconButton(
                      icon: Icon(
                        _confirmPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: mainColor,
                      ),
                      onPressed: () {
                        setState(() {
                          _confirmPasswordVisible = !_confirmPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {
                    Get.to(ForgotPassword());
                  },
                  child: CustomText(
                    text: 'Forgot password',
                    color: textColor,
                    fontSize: 16.sp,
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              GestureDetector(
                onTap: () {
                  register();
                },
                child: Container(
                  width: 320.w,
                  height: 48.h,
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
                        text: "CREATE AN ACCOUNT",
                        fontSize: 16.sp,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextButton(
                onPressed: () {
                  Get.to(Login());
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(16)),
                  child: Center(
                      child: CustomText(
                          text: 'ALREADY HAVE AN ACCOUNT',
                          color: mainColor,
                          fontSize: 14.sp,
                          decoration: TextDecoration.underline)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
