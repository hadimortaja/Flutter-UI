import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final Alignment alignment;
  final TextDecoration decoration;
  final TextOverflow overflow;
  final double height;
  final TextAlign textAlign;

  const CustomText({
    this.text = '',
    this.fontSize = 16.0,
    this.color = Colors.black,
    this.fontWeight = FontWeight.normal,
    this.alignment = Alignment.bottomRight,
    this.decoration = TextDecoration.none,
    this.overflow = TextOverflow.visible,
    this.height = 1,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign ?? TextAlign.start,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          height: height,
          fontWeight: fontWeight,
          decoration: decoration,
        ),
        overflow: overflow);
  }
}
