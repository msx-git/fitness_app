import 'package:fitness_app/constants/text_styles.dart';
import 'package:fitness_app/generated/assets.dart';
import 'package:fitness_app/ui/home/widgets/reports/report_appbar.dart';
import 'package:fitness_app/ui/home/widgets/reports/route_item.dart';
import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../constants/colors.dart';
import 'cycling_image.dart';

class CyclingReports extends StatelessWidget {
  const CyclingReports({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          SafeArea(child: 16.height),

          /// Custom AppBar
          const ReportAppbar(activity: 'Cycling'),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
              children: [
                Text(
                  'Enjoy your cycling routine',
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
                      top: 16.h,
                      left: 16.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const CyclingImageItem(
                            text1: '15km',
                            text2: 'distance',
                            iconLink: Assets.iconsDistance,
                          ),
                          16.height,
                          const CyclingImageItem(
                            text1: '5:20/km',
                            text2: 'pace',
                            iconLink: Assets.iconsBolt,
                          ),
                          16.height,
                          const CyclingImageItem(
                            text1: '1h 30min',
                            text2: 'time',
                            iconLink: Assets.iconsTimer,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 16.h,
                      right: 16.w,
                      child: Text(
                        "Your last trip:\nGreen Forest",
                        style:
                            TextStyles.whiteHeadline1.copyWith(fontSize: 20.sp),
                      ),
                    )
                  ],
                ),
                48.height,
                Row(
                  children: [
                    Text(
                      "Most popular routes",
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
                const RouteItem(
                  routeName: 'Kempen Route',
                  km: '102 km',
                  m: '1.120 m',
                  hour: '08:00h',
                  routImage: Assets.iconsKempenRoute,
                ),
                const RouteItem(
                  routeName: 'Green Belt Route',
                  km: '120 km',
                  m: '820 m',
                  hour: '09:30h',
                  routImage: Assets.iconsGreenBeltRoute,
                ),
                const RouteItem(
                  routeName: 'Scheldt Route',
                  km: '156 km',
                  m: '2.120 m',
                  hour: '11:45h',
                  routImage: Assets.iconsScheldtRoute,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
