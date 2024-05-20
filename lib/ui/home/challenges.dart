import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';
import '../../generated/assets.dart';
import 'widgets/custom_appbar.dart';
import 'widgets/goal_item.dart';
import 'widgets/goal_progress.dart';

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
                                child: Image.asset(Assets.imagesChallangersBanner),
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
                              child: Text("Start on 01 March", style: TextStyles.whiteHeadline4),
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
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.w),
                    child: Text(
                      "Challenges",
                      style: TextStyles.mainTextBold.copyWith(fontSize: 16.sp),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [

                    ],
                  ),
                ),
                8.height,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.w),
                    child: Text(
                      "Events",
                      style: TextStyles.mainTextBold.copyWith(fontSize: 16.sp),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


