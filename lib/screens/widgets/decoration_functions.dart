import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

InputDecoration authInputDecoration({String labelText}) {
  return InputDecoration(
    contentPadding: const EdgeInsets.all(8.0),
    hintStyle: TextStyle(fontSize: 14.sp),
    // hint: labelText,
    hintText: labelText,
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
    // errorStyle: const TextStyle(color: Colors.white),
  );
}
