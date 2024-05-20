import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';

class TodayItem extends StatefulWidget {
  const TodayItem({super.key, required this.title, required this.iconLink,this.isChosen = false});

  final String title;
  final String iconLink;
  final bool isChosen;

  @override
  State<TodayItem> createState() => _TodayItemState();
}

class _TodayItemState extends State<TodayItem> {
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
        padding: EdgeInsets.symmetric(vertical: 16.h),
        margin: EdgeInsets.symmetric(vertical: 16.h),
        width: 92.w,
        height: 88.h,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.blue500 : AppColors.white,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              widget.iconLink,
              color: isSelected ? AppColors.white : AppColors.grey600,
            ),
            8.height,
            Text(
              widget.title,
              style: TextStyles.mainTextSemiBold.copyWith(
                color: isSelected ? AppColors.white : AppColors.grey700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
