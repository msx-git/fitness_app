import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';
import '../../generated/assets.dart';
import 'widgets/custom_appbar.dart';
import 'widgets/goal_item.dart';
import 'widgets/goal_progress.dart';

class Goals extends StatelessWidget {
  const Goals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          SafeArea(child: 16.height),
          const CustomAppBar(title: "My Goals"),
          12.height,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Text(
              "Do better today with all your goals",
              style: TextStyles.mainTextBold,
            ),
          ),
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
                        right: 10.w,
                        bottom: 10.h,
                        child: SizedBox(
                          height: 120.h,
                          child: Image.asset(Assets.imagesYoga),
                        ),
                      ),
                      Positioned(
                        top: 24.h,
                        left: 20.w,
                        child: Text(
                          'Practice yoga\nfor 7 days',
                          style: TextStyles.whiteHeadline1
                              .copyWith(fontSize: 18.sp),
                        ),
                      ),
                      Positioned(
                        bottom: 20.h,
                        left: 20.w,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 6.h,
                              width: 36.w,
                              decoration: BoxDecoration(
                                color: AppColors.blue900,
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                            ),
                            Container(
                              height: 3.h,
                              width: 60.w,
                              color: AppColors.grey150,
                            ),
                            7.width,
                            Text("3/7 done", style: TextStyles.whiteHeadline4)
                          ],
                        ),
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
                "Daily Goals",
                style: TextStyles.mainTextBold.copyWith(fontSize: 16.sp),
              ),
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const GoalItem(
                  title: "Steps",
                  iconLink: Assets.iconsStep,
                  amount: 2000,
                  unit: '',
                  iconColor: AppColors.green500,
                  isChosen: true,
                ),
                16.width,
                const GoalItem(
                  title: "Calories",
                  iconLink: Assets.iconsCalories,
                  amount: 120,
                  unit: '',
                  iconColor: AppColors.yellow500,
                ),
                16.width,
                const GoalItem(
                  title: "Running",
                  iconLink: Assets.iconsWalk,
                  amount: 5,
                  unit: ' km',
                  iconColor: AppColors.purple500,
                ),
                16.width,
                const GoalItem(
                  title: "Sleep",
                  iconLink: Assets.iconsSleep,
                  amount: 8,
                  unit: 'h',
                  iconColor: AppColors.lightBlue500,
                ),
              ],
            ),
          ),
          8.height,
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Text(
                "Completed",
                style: TextStyles.mainTextBold.copyWith(fontSize: 16.sp),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
              children: [
                const GoalProgress(
                  iconLink: Assets.iconsCycling,
                  progress: "10 km Cycling Tour",
                ),
                16.height,
                const GoalProgress(
                  iconLink: Assets.iconsMarathon,
                  progress: "10 km Power Marathon",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
