import 'package:fitness_app/generated/assets.dart';
import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';

class GoalItem extends StatefulWidget {
  const GoalItem({
    super.key,
    required this.title,
    required this.iconLink,
    this.isChosen = false,
    required this.amount,
    required this.unit,
    required this.iconColor,
  });

  final String title;
  final String iconLink;
  final String unit;

  final int amount;
  final Color iconColor;
  final bool isChosen;

  @override
  State<GoalItem> createState() => _GoalItemState();
}

class _GoalItemState extends State<GoalItem> {
  late bool isSelected;

  @override
  void initState() {
    super.initState();
    isSelected = widget.isChosen;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        isSelected = !isSelected;
      }),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        margin: EdgeInsets.symmetric(vertical: 16.h),
        width: 92.w,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.green500 : AppColors.white,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: const Color(0xff323247).withOpacity(0.02),
              blurRadius: 20.r,
              spreadRadius: -2,
              offset: const Offset(0, -4),
            ),
            BoxShadow(
              color: const Color(0xff0C1A4B).withOpacity(0.1),
              blurRadius: 8.r,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  widget.iconLink,
                  height: 24.h,
                  color: isSelected ? AppColors.white : widget.iconColor,
                ),
                Opacity(
                  opacity: isSelected ? 1 : 0,
                  child: SvgPicture.asset(
                    Assets.iconsCheck,
                    height: 18.h,
                  ),
                ),
              ],
            ),
            12.height,
            RichText(
              text: TextSpan(
                text: widget.amount.toString(),
                style: TextStyles.whiteHeadline1.copyWith(
                    color: isSelected ? AppColors.white : AppColors.grey800,
                    fontSize: 20.sp),
                children: [
                  TextSpan(
                    text: widget.unit,
                    style: TextStyles.whiteHeadlineSmall.copyWith(
                      color: isSelected ? AppColors.grey100 : AppColors.grey700,
                      fontSize: 14.sp,
                    ),
                  )
                ],
              ),
            ),
            Text(
              widget.title,
              style: TextStyles.whiteHeadlineSmall.copyWith(
                color: isSelected ? AppColors.grey100 : AppColors.grey700,
                fontSize: 14.sp,
              ),
            )
          ],
        ),
      ),
    );
  }
}
