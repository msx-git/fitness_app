import 'package:fitness_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle whiteHeadline1 = TextStyle(
    fontFamily: 'Jakarta',
    fontWeight: FontWeight.w700,
    fontSize: 34.sp,
    color: const Color(0xffFFFFFF),
  );
  static TextStyle whiteHeadline2 = TextStyle(
    fontFamily: 'Jakarta',
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    color: const Color(0xffFFFFFF),
  );
  static TextStyle buttonText = TextStyle(
    fontFamily: 'Jakarta',
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    color: AppColors.mainBlue,
  );
}
