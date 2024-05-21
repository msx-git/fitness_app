import 'package:fitness_app/ui/home/widgets/reports/yoga_image_item.dart';
import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/text_styles.dart';
import '../../../../generated/assets.dart';
import 'report_appbar.dart';

class YogaReports extends StatelessWidget {
  const YogaReports({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          SafeArea(child: 16.height),

          /// Custom Appbar
          const ReportAppbar(activity: 'Yoga'),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
              children: [
                Text(
                  'Start your yoga class',
                  style: TextStyles.mainTextBold.copyWith(fontSize: 20.sp),
                ),
                8.height,
                Row(
                  children: [
                    SvgPicture.asset(Assets.iconsCalendar, height: 20.h),
                    6.width,
                    Text(
                      'Today, 21 May 2024',
                      style: TextStyles.mainTextMedium.copyWith(
                        color: AppColors.grey700,
                      ),
                    ),
                    10.width,
                    SvgPicture.asset(Assets.iconsArrowDown, height: 20.h)
                  ],
                ),
                24.height,
                Stack(
                  children: [
                    Image.asset(
                      Assets.imagesCycleImage,
                      width: 327.w,
                    ),
                    Positioned(
                      right: 10.w,
                      top: 10.h,
                      child: ZoomTapAnimation(
                        child:
                            SvgPicture.asset(Assets.iconsPlayNavy, width: 38.w),
                      ),
                    ),
                    Positioned(
                      top: 14.h,
                      left: 14.w,
                      child: Text(
                        "Next course:\nRefine your\nspine",
                        style:
                            TextStyles.whiteHeadline1.copyWith(fontSize: 20.sp),
                      ),
                    ),
                    Positioned(
                      bottom: 12.h,
                      right: 12.w,
                      left: 12.w,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          YogaImageItem(
                            text1: '45',
                            text2: 'minutes',
                            iconLink: Assets.iconsTimer,
                          ),
                          YogaImageItem(
                            text1: 'beginner',
                            text2: 'level',
                            iconLink: Assets.iconsYoga,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                24.height,
                const Divider(color: AppColors.grey150),
                24.height,
                Row(
                  children: [
                    Text(
                      "Programs",
                      style: TextStyles.mainTextBold2,
                    ),
                    const Spacer(),
                    ZoomTapAnimation(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'See all',
                            style: TextStyle(
                              fontFamily: 'Jakarta',
                              color: AppColors.blue500,
                              fontWeight: FontWeight.w700,
                              fontSize: 14.sp,
                            ),
                          ),
                          6.width,
                          SvgPicture.asset(
                            Assets.iconsArrowRight,
                            color: AppColors.blue500,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                16.height,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const YogaProgramItem(
                          programTitle: 'Morning Yoga',
                          level: 'beginner',
                          duration: '30 min',
                          imageLink: Assets.imagesMorningYoga),
                      16.width,
                      const YogaProgramItem(
                          programTitle: 'Yin Yoga',
                          level: 'advanved',
                          duration: '45 min',
                          imageLink: Assets.imagesYinYoga),
                      16.width,
                      const YogaProgramItem(
                          programTitle: 'Essential Yoga',
                          level: 'intermediar',
                          duration: '35 min',
                          imageLink: Assets.imagesEssentialYoga),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class YogaProgramItem extends StatelessWidget {
  final String programTitle;
  final String level;
  final String duration;
  final String imageLink;

  const YogaProgramItem({
    super.key,
    required this.programTitle,
    required this.level,
    required this.duration,
    required this.imageLink,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155.w,
      height: 225.h,
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(14.r),
          boxShadow: [
            BoxShadow(
              color: const Color(0xff323247).withOpacity(0.04),
              blurRadius: 20.r,
              spreadRadius: -2,
              offset: const Offset(0, 4),
            ),
            BoxShadow(
              color: const Color(0xff0C1A4B).withOpacity(0.05),
              blurRadius: 5.r,
            ),
          ]),
      child: Stack(
        children: [
          Positioned(
            top: 16.h,
            left: 16.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  programTitle,
                  style: TextStyles.mainTextSemiBold2.copyWith(
                    color: AppColors.grey800,
                  ),
                ),
                7.height,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 7.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: AppColors.grey150),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// svg picture here
                      SvgPicture.asset(Assets.iconsBlueBullet, width: 13.w),

                      SizedBox(width: 5.w),
                      Text(
                        level,
                        style: TextStyle(
                          color: AppColors.grey600,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                5.height,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 7.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: AppColors.grey150),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// svg picture here
                      SvgPicture.asset(
                        Assets.iconsGreenBullet,
                        width: 13.w,
                      ),

                      SizedBox(width: 5.w),
                      Text(
                        duration,
                        style: TextStyle(
                          color: AppColors.grey600,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(imageLink),
          ),
        ],
      ),
    );
  }
}
