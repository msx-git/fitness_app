import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';
import '../../../generated/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});

  final String title;

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
            title,
            style: TextStyles.mainTextSemiBold2,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: AppColors.grey700),
          ),
          2.width,
          Container(
            height: 19.h,
            width: 1.w,
            color: AppColors.grey200,
          ),
          12.width,
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
