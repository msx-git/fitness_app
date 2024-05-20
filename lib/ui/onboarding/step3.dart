import 'package:fitness_app/ui/home/home.dart';
import 'package:fitness_app/ui/onboarding/widgets/workout_item.dart';
import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';
import '../../generated/assets.dart';
import '../auth/widgets/action_button.dart';

class Step3 extends StatefulWidget {
  const Step3({super.key});

  @override
  State<Step3> createState() => _Step3State();
}

class _Step3State extends State<Step3> {
  bool isChosen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SafeArea(child: 10.height),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: SvgPicture.asset(
                          Assets.iconsArrowLeft,
                          width: 20.w,
                        ),
                      ),
                      8.width,
                      Container(
                        height: 22.h,
                        width: 1.w,
                        color: AppColors.grey150,
                      ),
                      8.width,
                      Text(
                        "Step 3",
                        style: TextStyles.mainTextSemiBold2,
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushAndRemoveUntil(
                            CupertinoPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                            (Route<dynamic> route) => route is HomePage,
                          );
                        },
                        child: Text(
                          "Skip question",
                          style: TextStyles.mainTextSemiBold2
                              .copyWith(fontSize: 14.sp),
                        ),
                      )
                    ],
                  ),
                  12.height,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 6.h,
                        width: 327.w,
                        decoration: BoxDecoration(
                            color: AppColors.yellow500,
                            borderRadius: BorderRadius.circular(6.r)),
                      ),
                    ],
                  ),
                  40.height,
                  Text(
                    "Where do you enjoy the most to train?",
                    style: TextStyles.mainTextBold,
                  ),
                  10.height,
                  Text(
                    "Select all that applies:",
                    style: TextStyles.mainTextMedium,
                  ),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      WorkoutItem(
                        choose: () {
                          setState(() {
                            isChosen = true;
                          });
                        },
                        workoutName: "Outdoor",
                        imageLink: Assets.iconsOutdoor,
                      ),
                      WorkoutItem(
                        choose: () {
                          setState(() {
                            isChosen = true;
                          });
                        },
                        workoutName: "Indoor",
                        imageLink: Assets.iconsIndoor,
                      ),
                      WorkoutItem(
                        choose: () {
                          setState(() {
                            isChosen = true;
                          });
                        },
                        workoutName: "Home",
                        imageLink: Assets.iconsHome,
                      ),
                      WorkoutItem(
                        choose: () {
                          setState(() {
                            isChosen = true;
                          });
                        },
                        workoutName: "At the gym",
                        imageLink: Assets.iconsBarbell,
                      ),
                      WorkoutItem(
                        choose: () {
                          setState(() {
                            isChosen = true;
                          });
                        },
                        workoutName: "In the park",
                        imageLink: Assets.iconsTree,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.97),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(26.r),
                topRight: Radius.circular(26.r),
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff494D5A).withOpacity(0.12),
                  blurRadius: 40.r,
                  offset: const Offset(0, -5),
                )
              ],
            ),
            child: GestureDetector(
              onTap: isChosen
                  ? () {
                      Navigator.of(context).pushAndRemoveUntil(
                        CupertinoPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                        (Route<dynamic> route) => route is HomePage,
                      );
                    }
                  : () {},
              child: ActionButton(
                text: 'Continue',
                buttonColor: isChosen ? AppColors.blue500 : AppColors.blue100,
                textColor: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
