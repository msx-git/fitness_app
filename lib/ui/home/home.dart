import 'package:fitness_app/constants/colors.dart';
import 'package:fitness_app/constants/text_styles.dart';
import 'package:fitness_app/generated/assets.dart';
import 'package:fitness_app/ui/home/widgets/see_reports.dart';
import 'package:fitness_app/ui/home/widgets/today_item.dart';
import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/habit_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff010101),
      body: Column(
        children: [
          Image.asset(
            Assets.imagesHomeHeader,
            height: 246.h,
            width: double.infinity,
            fit: BoxFit.cover,
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
                            imageLink: Assets.imagesGoals),
                        16.width,
                        const HabitItem(
                            text: "Nutrition",
                            subText: "3 hours of fasting",
                            imageLink: Assets.imagesNutrition),
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
                            imageLink: Assets.imagesChallenges),
                        16.width,
                        const SeeReports(),
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


