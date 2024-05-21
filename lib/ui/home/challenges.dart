import 'package:fitness_app/ui/home/widgets/challenge_status_item.dart';
import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';
import '../../generated/assets.dart';
import 'widgets/custom_appbar.dart';

class Challenges extends StatelessWidget {
  const Challenges({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          SafeArea(child: 16.height),
          const CustomAppBar(title: "Challenges"),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
              children: [
                50.height,
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 24.w),
                      height: 130.h,
                      width: 263.w,
                      decoration: BoxDecoration(
                        color: const Color(0xffCCE1F7).withOpacity(0.3),
                        borderRadius: BorderRadius.circular(14.r),
                      ),
                    ),
                    Positioned(
                      bottom: 12.h,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 24.w),
                        height: 130.h,
                        width: 295.w,
                        decoration: BoxDecoration(
                          color: const Color(0xffCCE1F7),
                          borderRadius: BorderRadius.circular(14.r),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 26.h,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 24.w),
                        height: 130.h,
                        width: 327.w,
                        decoration: BoxDecoration(
                          color: AppColors.blue500,
                          borderRadius: BorderRadius.circular(14.r),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 0,
                              child: Image.asset(
                                Assets.imagesGoalsCardCircle,
                                height: 130.h,
                              ),
                            ),
                            Positioned(
                              right: 12.w,
                              bottom: 6.h,
                              child: SizedBox(
                                height: 120.h,
                                child:
                                    Image.asset(Assets.imagesChallangersBanner),
                              ),
                            ),
                            Positioned(
                              top: 24.h,
                              left: 20.w,
                              child: Text(
                                '7 days\nmorning yoga',
                                style: TextStyles.whiteHeadline1
                                    .copyWith(fontSize: 18.sp),
                              ),
                            ),
                            Positioned(
                              bottom: 25.h,
                              left: 20.w,
                              child: Text("Start on 01 March",
                                  style: TextStyles.whiteHeadline4),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                24.height,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Challenges",
                    style: TextStyles.mainTextBold.copyWith(fontSize: 16.sp),
                  ),
                ),
                const ChallengeStatusItem(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const ChallengeItem(
                        title: "Running",
                        headline: "End April 200 km\nChallenge",
                        date: 'Starts on 01 April',
                        challengersImageLink: Assets.imagesChallengersStack1,
                        titleColor: AppColors.lightBlue500,
                      ),
                      16.width,
                      const ChallengeItem(
                        title: "Swimming",
                        headline: "30 Days Swiming\nChallenge",
                        date: 'Active til 12 March',
                        challengersImageLink: Assets.imagesChallengersStack2,
                        titleColor: AppColors.orange500,
                      ),
                    ],
                  ),
                ),
                24.height,

                /// Events
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Events",
                    style: TextStyles.mainTextBold.copyWith(fontSize: 16.sp),
                  ),
                ),
                16.height,
                const EventItem(
                    headline: '10 km Cycling Tour', subline: "Sat, 11 March"),
                16.height,
                const EventItem(
                    headline: 'Night Running', subline: "Fri, 28 March"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class EventItem extends StatelessWidget {
  const EventItem({super.key, required this.headline, required this.subline});

  final String headline;
  final String subline;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
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
            color: const Color(0xff0C1A4B).withOpacity(0.08),
            blurRadius: 5.r,
          ),
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                headline,
                style: TextStyles.mainTextSemiBold2
                    .copyWith(color: AppColors.grey800),
              ),
              2.height,
              Text(
                subline,
                style: TextStyles.mainTextMedium,
              ),
            ],
          ),
          SvgPicture.asset(Assets.iconsArrowRight, width: 20.w)
        ],
      ),
    );
  }
}

class ChallengeItem extends StatelessWidget {
  const ChallengeItem({
    super.key,
    required this.title,
    required this.titleColor,
    required this.headline,
    required this.date,
    required this.challengersImageLink,
  });

  final String title;
  final Color titleColor;
  final String headline;
  final String date;
  final String challengersImageLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyles.whiteHeadline4.copyWith(color: titleColor),
          ),
          4.height,
          Text(
            headline,
            style:
                TextStyles.mainTextSemiBold2.copyWith(color: AppColors.grey800),
          ),
          10.height,
          Container(
            padding: EdgeInsets.symmetric(horizontal: 7.w),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(color: AppColors.grey150)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(Assets.iconsYellowBullet),
                5.width,
                Text(
                  date,
                  style: TextStyles.mainTextMedium.copyWith(fontSize: 12.sp),
                )
              ],
            ),
          ),
          24.height,
          Image.asset(challengersImageLink, height: 42.h),
        ],
      ),
    );
  }
}
