import 'package:fitness_app/constants/colors.dart';
import 'package:fitness_app/constants/text_styles.dart';
import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class WorkoutItem extends StatefulWidget {
  const WorkoutItem(
      {super.key,
      required this.workoutName,
      required this.imageLink,
      required this.choose});

  final String workoutName;
  final String imageLink;
  final Function choose;

  @override
  State<WorkoutItem> createState() => _WorkoutItemState();
}

class _WorkoutItemState extends State<WorkoutItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        isSelected = true;
        widget.choose();
      }),
      child: FittedBox(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 13.h,
            horizontal: 15.w,
          ),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.yellow : AppColors.white,
            borderRadius: BorderRadius.circular(14.r),
            border: Border.all(color: AppColors.grey200),
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                widget.imageLink,
                color: isSelected ? AppColors.white : AppColors.grey600,
              ),
              4.width,
              Text(
                widget.workoutName,
                style: TextStyles.mainTextMedium.copyWith(
                  color: isSelected ? AppColors.white : AppColors.grey600,
                  fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
