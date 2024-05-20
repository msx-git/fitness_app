import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';

class GoalProgress extends StatelessWidget {
  const GoalProgress({
    super.key,
    required this.iconLink,
    required this.progress,
  });

  final String iconLink;
  final String progress;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(14.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            iconLink,
            width: 36.w,
          ),
          8.height,
          Text(
            progress,
            style: TextStyles.mainTextBold
                .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w600),
          ),
          16.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "92% done",
                style: TextStyles.buttonText.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 13.sp,
                  color: AppColors.grey600,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: '9.4/10',
                  style: TextStyles.buttonText.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 13.sp,
                    color: AppColors.grey800,
                  ),
                  children: [
                    TextSpan(
                      text: ' km',
                      style: TextStyles.buttonText.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 13.sp,
                        color: AppColors.grey600,
                      ),
                    )
                  ],
                ),
              ),
              // Text("9.4/10 km"),
            ],
          ),
          14.height,
          Row(
            children: [
              Container(
                height: 6.h,
                width: 260.w,
                decoration: BoxDecoration(
                  color: AppColors.lightBlue500,
                  borderRadius: BorderRadius.circular(6.r),
                ),
              ),
              Container(
                height: 3.h,
                width: 27.w,
                color: AppColors.grey150,
              ),
            ],
          ),
          16.height,
        ],
      ),
    );
  }
}
