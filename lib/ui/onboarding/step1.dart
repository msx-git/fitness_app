import 'package:fitness_app/constants/colors.dart';
import 'package:fitness_app/constants/text_styles.dart';
import 'package:fitness_app/generated/assets.dart';
import 'package:fitness_app/ui/auth/widgets/action_button.dart';
import 'package:fitness_app/ui/onboarding/step2.dart';
import 'package:fitness_app/ui/onboarding/widgets/sport_item.dart';
import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Step1 extends StatefulWidget {
  const Step1({super.key});

  @override
  State<Step1> createState() => _Step1State();
}

class _Step1State extends State<Step1> {
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
                          child: SvgPicture.asset(Assets.iconsArrowLeft,
                              width: 20.w)),
                      8.width,
                      Container(
                        height: 22.h,
                        width: 1.w,
                        color: AppColors.grey150,
                      ),
                      8.width,
                      Text(
                        "Step 1",
                        style: TextStyles.mainTextSemiBold2,
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            CupertinoPageRoute(
                              builder: (context) => const Step2(),
                            ),
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
                        width: 107.w,
                        decoration: BoxDecoration(
                            color: AppColors.yellow500,
                            borderRadius: BorderRadius.circular(6.r)),
                      ),
                      Container(
                        height: 3.h,
                        width: 220.w,
                        color: AppColors.grey150,
                      )
                    ],
                  ),
                  40.height,
                  Text(
                    "First up, which sports do you enjoy the most?",
                    style: TextStyles.mainTextBold,
                  ),
                  10.height,
                  Text(
                    "Select all that applies:",
                    style: TextStyles.mainTextMedium,
                  ),
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.only(top: 24.h),
                      children: [
                        SportItem(
                          sportName: "Basketball",
                          available: 4,
                          imageLink: Assets.imagesBasketball,
                          choose: () {
                            setState(() {
                              isChosen = true;
                            });
                          },
                        ),
                        20.height,
                        SportItem(
                          sportName: "Football",
                          available: 6,
                          imageLink: Assets.imagesFootball,
                          choose: () {
                            setState(() {
                              isChosen = true;
                            });
                          },
                        ),
                        20.height,
                        SportItem(
                          sportName: "Tennish",
                          available: 2,
                          imageLink: Assets.imagesTennis,
                          choose: () {
                            setState(() {
                              isChosen = true;
                            });
                          },
                        ),
                        20.height,
                        SportItem(
                          sportName: "Valleyball",
                          available: 3,
                          imageLink: Assets.imagesValleyball,
                          choose: () {
                            setState(() {
                              isChosen = true;
                            });
                          },
                        ),
                        20.height,
                      ],
                    ),
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
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) => const Step2(),
                        ),
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
