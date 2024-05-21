import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/text_styles.dart';
import '../../../../generated/assets.dart';

class ReportAppbar extends StatelessWidget {
  const ReportAppbar({super.key, required this.activity});
  final String activity;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: SvgPicture.asset(Assets.iconsArrowLeft, width: 20.w),
          ),
          8.width,
          Container(
            height: 22.h,
            width: 1.w,
            color: AppColors.grey150,
          ),
          8.width,
          Text(
            "Activity tracking",
            style: TextStyles.mainTextSemiBold2,
          ),
          6.width,
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: AppColors.lightGreen100,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Text(
              activity,
              style: TextStyle(
                color: AppColors.lightGreen700,
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Spacer(),
          SvgPicture.asset(
            Assets.iconsMenu,
            width: 24.w,
            height: 24.h,
            color: AppColors.grey700,
          )
        ],
      ),
    );
  }
}
