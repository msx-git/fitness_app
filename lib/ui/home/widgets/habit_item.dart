import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';

class HabitItem extends StatelessWidget {
  const HabitItem({
    super.key,
    required this.text,
    required this.subText,
    required this.imageLink,
  });

  final String text;
  final String subText;
  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155.h,
      width: 155.w,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: AppColors.grey100, width: 1.w),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff323247).withOpacity(0.02),
            blurRadius: 15.r,
            spreadRadius: -1.5,
            offset: const Offset(0, 3),
          ),
          BoxShadow(
            color: const Color(0xff0C1A4B).withOpacity(0.05),
            blurRadius: 3.75.r,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            child: Image.asset(imageLink, height: 90.h),
          ),
          Positioned(
            bottom: 11.h,
            left: 14.w,
            child: Text(
              subText,
              style: TextStyles.mainTextMedium.copyWith(fontSize: 13.sp),
            ),
          ),
          Positioned(
            bottom: 33.h,
            left: 14.w,
            child: Text(
              text,
              style: TextStyles.mainTextSemiBold2
                  .copyWith(color: AppColors.grey800),
            ),
          )
        ],
      ),
    );
  }
}