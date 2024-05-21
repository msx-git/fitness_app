import 'package:fitness_app/controllers/user_controller.dart';
import 'package:fitness_app/ui/home/challenges.dart';
import 'package:fitness_app/ui/home/goals.dart';
import 'package:fitness_app/ui/home/nutritions.dart';
import 'package:fitness_app/ui/home/reports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';
import '../../generated/assets.dart';
import '/utils/extensions.dart';
import 'widgets/dashboard_item.dart';
import 'widgets/habit_item.dart';
import 'widgets/see_reports.dart';
import 'widgets/today_item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final userController = UserController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff010101),
      body: Column(
        children: [
          Container(
            height: 246.h,
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.imagesHomeHeader),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset(Assets.imagesThomas, height: 42.h),
                    12.width,
                    RichText(
                      text: TextSpan(
                        text: 'Hello,\n',
                        style: TextStyle(
                          fontFamily: 'Jakarta',
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: AppColors.grey200,
                        ),
                        children: [
                          TextSpan(
                            text: userController.signedUser.firstName,
                            style: TextStyle(
                              fontFamily: 'Jakarta',
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp,
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search, color: AppColors.white),
                    ),
                    12.width,
                    Container(
                      height: 19.h,
                      width: 1.w,
                      color: AppColors.white,
                    ),
                    12.width,
                    SvgPicture.asset(
                      Assets.iconsMenu,
                      width: 24.w,
                      height: 24.h,
                    )
                  ],
                ),
                20.height,

                ///Dashboard ---------------------------------
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  decoration: BoxDecoration(
                      color: const Color(0xff40464D).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const DashboardItem(
                        title: 'Weight',
                        amount: '56.5',
                        iconLink: Assets.iconsWeight,
                        iconColor: AppColors.yellow500,
                        unit: '  kg',
                      ),
                      Container(
                        height: 50.h,
                        width: 1.w,
                        color: AppColors.white.withOpacity(0.2),
                      ),
                      const DashboardItem(
                        title: 'Step',
                        amount: '1428',
                        iconLink: Assets.iconsStep,
                        iconColor: AppColors.green500,
                        unit: '  step',
                      ),
                      Container(
                        height: 50.h,
                        width: 1.w,
                        color: AppColors.white.withOpacity(0.2),
                      ),
                      const DashboardItem(
                        title: 'Heart Rate',
                        amount: '80',
                        iconLink: Assets.iconsHeartbeat,
                        iconColor: AppColors.red300,
                        unit: '  Bpm',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32.r),
                  topRight: Radius.circular(32.r),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(width: double.infinity),

                  /// WHAT ARE YOU UP TODAY? ------------------------------------
                  Padding(
                    padding: EdgeInsets.only(top: 24.h, left: 24.w),
                    child: Text("What are you up to today?",
                        style: TextStyles.mainTextBold2),
                  ),
                  //16.height,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Row(
                      children: [
                        const TodayItem(
                          title: "Running",
                          iconLink: Assets.iconsStep,
                          isChosen: true,
                        ),
                        16.width,
                        const TodayItem(
                            title: "Cycling", iconLink: Assets.iconsBike),
                        16.width,
                        const TodayItem(
                            title: "Yoga", iconLink: Assets.iconsYoga),
                        16.width,
                        const TodayItem(
                            title: "Hiking", iconLink: Assets.iconsHiking),
                      ],
                    ),
                  ),

                  /// YOUR HABITS -----------------------------------
                  Padding(
                    padding: EdgeInsets.only(top: 4.h, left: 24.w),
                    child: Text(
                      "Your habits",
                      style: TextStyles.mainTextBold2,
                    ),
                  ),
                  16.height,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Row(
                      children: [
                        const HabitItem(
                          text: 'Goals',
                          subText: '72% achieved',
                          imageLink: Assets.imagesGoals,
                          jumpTo: Goals(),
                        ),
                        16.width,
                        HabitItem(
                          text: "Nutrition",
                          subText: "3 hours of fasting",
                          imageLink: Assets.imagesNutrition,
                          jumpTo: Nutritions(),
                        ),
                      ],
                    ),
                  ),
                  16.height,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: Row(
                      children: [
                        const HabitItem(
                          text: 'Challenges',
                          subText: '64% achieved',
                          imageLink: Assets.imagesChallenges,
                          jumpTo: Challenges(),
                        ),
                        16.width,
                        const SeeReports(jumpTo: Reports()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
