import 'package:fitness_app/generated/assets.dart';
import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';

class SeeReports extends StatelessWidget {
  const SeeReports({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155.h,
      width: 155.w,
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 14.w),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Daily Reports",
            style:
                TextStyles.mainTextSemiBold2.copyWith(color: AppColors.grey800),
          ),
          4.height,
          Text(
            "All your details in a single place.",
            style: TextStyles.mainTextMedium.copyWith(fontSize: 13.sp),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              Assets.iconsGoReports,
              height: 38.h,
              width: 38.w,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
