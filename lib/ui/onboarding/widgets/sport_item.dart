import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';
import '../../../generated/assets.dart';

class SportItem extends StatefulWidget {
  const SportItem(
      {super.key,
      required this.sportName,
      required this.available,
      required this.imageLink, required this.choose});

  final String sportName;
  final int available;

  final String imageLink;
  final Function choose;

  @override
  State<SportItem> createState() => _SportItemState();
}

class _SportItemState extends State<SportItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        isSelected = true;
        widget.choose();
      }),
      child: Container(
        height: 110.h,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.r),
          color: isSelected ? AppColors.yellow500 : AppColors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xff323247).withOpacity(0.02),
              blurRadius: 15.r,
              spreadRadius: -1.5.r,
              offset: const Offset(0, 3),
            ),
            BoxShadow(
              color: const Color(0xff0C1A4B).withOpacity(0.05),
              blurRadius: 3.75.r,
            ),
          ],
        ),
        child: Row(
          children: [
            20.width,
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.sportName,
                  style: TextStyles.mainTextSemiBold2.copyWith(
                      color: isSelected ? AppColors.white : AppColors.grey800),
                ),
                10.height,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 7.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(
                      color: AppColors.grey150,
                      width: 1.w,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        isSelected
                            ? Assets.iconsYellowBullet
                            : Assets.iconsBlueBullet,
                        height: 13.h,
                        width: 13.w,
                      ),
                      5.width,
                      Text(
                        "${widget.available} available practices",
                        style: TextStyles.mainTextMedium.copyWith(
                          fontSize: 13.sp,
                          color:
                              isSelected ? AppColors.white : AppColors.grey600,
                          fontWeight: isSelected?FontWeight.w700:FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const Spacer(),
            Image.asset(widget.imageLink)
          ],
        ),
      ),
    );
  }
}
