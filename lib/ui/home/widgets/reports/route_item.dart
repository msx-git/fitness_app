import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/text_styles.dart';
import '../../../../generated/assets.dart';
import '/utils/extensions.dart';

class RouteItem extends StatelessWidget {
  const RouteItem({
    super.key,
    required this.routeName,
    required this.km,
    required this.m,
    required this.hour,
    required this.routImage,
  });

  final String routeName;
  final String km;
  final String m;
  final String hour;
  final String routImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      color: AppColors.white,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      child: Row(
        children: [
          SvgPicture.asset(routImage, height: 56.h),
          10.width,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                routeName,
                style: TextStyles.mainTextSemiBold2
                    .copyWith(color: AppColors.grey800),
              ),
              8.height,
              Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.grey150),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(Assets.iconsArrowDirection),
                        SizedBox(width: 4.w),
                        Text(
                          km,
                          style: TextStyles.mainTextMedium
                              .copyWith(fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ),
                  5.width,
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.grey150),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(Assets.iconsTrendingUp),
                        SizedBox(width: 4.w),
                        Text(
                          m,
                          style: TextStyles.mainTextMedium
                              .copyWith(fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ),
                  5.width,
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.grey150),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(Assets.iconsTimer,
                            color: AppColors.purple500),
                        SizedBox(width: 4.w),
                        Text(
                          hour,
                          style: TextStyles.mainTextMedium
                              .copyWith(fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
