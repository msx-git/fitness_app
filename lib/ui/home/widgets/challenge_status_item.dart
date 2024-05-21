import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';

class ChallengeStatusItem extends StatefulWidget {
  const ChallengeStatusItem({super.key});

  @override
  State<ChallengeStatusItem> createState() => _ChallengeStatusItemState();
}

class _ChallengeStatusItemState extends State<ChallengeStatusItem> {
  List<bool> bools = [true, false, false, false];

  void setOption(int index) {
    for (int i = 0; i < bools.length; i++) {
      if (i == index) {
        bools[i] = true;
      } else {
        bools[i] = false;
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.zero,
      child: Row(
        children: [
          for (int i = 0; i < 4; i++)
            GestureDetector(
              onTap: () {
                setOption(i);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 14.w),
                margin: EdgeInsets.only(top: 16.h, right: 12.w, bottom: 16.h),
                decoration: BoxDecoration(
                  color: bools[i] ? AppColors.yellow : AppColors.white,
                  borderRadius: BorderRadius.circular(16.r),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff323247).withOpacity(0.02),
                      blurRadius: 20.r,
                      spreadRadius: -2,
                      offset: const Offset(0, 4),
                    ),
                    BoxShadow(
                      color: const Color(0xff0C1A4B).withOpacity(0.04),
                      blurRadius: 5.r,
                    ),
                  ],
                  border: Border.all(color: AppColors.grey200, width: 1.w),
                ),
                alignment: Alignment.center,
                child: Text(
                  [
                    'All',
                    'Future',
                    'Active',
                    'Completed',
                  ][i],
                  style: TextStyles.mainTextSemiBold.copyWith(
                    color: bools[i] ? AppColors.white : AppColors.grey600,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
