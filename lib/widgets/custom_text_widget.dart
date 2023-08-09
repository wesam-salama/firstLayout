import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.title,
     this.fontSize = 14,
     this.fontWeight,
    this.color,
  });

  final String title;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize?.sp,
        fontWeight: fontWeight,
        color: color ?? Colors.black,
      ),
    );
  }
}
