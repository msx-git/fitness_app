import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/text_styles.dart';

class YogaImageItem extends StatelessWidget {
  const YogaImageItem(
      {super.key,
      required this.text1,
      required this.text2,
      required this.iconLink});

  final String text1;
  final String text2;
  final String iconLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      width: 140.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff323247).withOpacity(0.04),
            blurRadius: 20.r,
            spreadRadius: -2,
            offset: const Offset(0, 4),
          ),
          BoxShadow(
            color: const Color(0xff0C1A4B).withOpacity(0.08),
            blurRadius: 5.r,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(iconLink, color: AppColors.grey600, width: 18.w),
          SizedBox(width: 6.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: TextStyles.mainTextSemiBold
                    .copyWith(color: AppColors.grey800, fontSize: 13.sp),
              ),
              SizedBox(height: 6.h),
              Text(
                text2,
                style: TextStyles.mainTextMedium.copyWith(
                  fontSize: 13.sp,
                  color: AppColors.grey700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
