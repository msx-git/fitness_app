import 'package:fitness_app/constants/colors.dart';
import 'package:fitness_app/constants/text_styles.dart';
import 'package:fitness_app/generated/assets.dart';
import 'package:fitness_app/ui/auth/widgets/action_button.dart';
import 'package:fitness_app/ui/home/home.dart';
import 'package:fitness_app/ui/onboarding/step1.dart';
import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          // SafeArea(child: 24.height),
          Image.asset(Assets.imagesOnboarding,height: 386.h,width: 375.w,fit: BoxFit.cover,),
          42.height,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Text(
              "Give us a change to personalize your journey",
              style: TextStyles.mainTextBold,
              textAlign: TextAlign.center,
            ),
          ),
          10.height,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Text(
              "Simplify your journey through our smart configurator.",
              style: TextStyles.mainTextMedium,
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              CupertinoPageRoute(builder: (context) => Step1()),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: const ActionButton(
                text: "Start",
                buttonColor: Colors.blue,
                textColor: Colors.white,
              ),
            ),
          ),
          10.height,
          TextButton(
            onPressed: () => Navigator.of(context).pushReplacement(
              CupertinoPageRoute(builder: (context) => const HomePage()),
            ),
            child: Text(
              'Skip for now',
              style: TextStyles.mainTextSemiBold.copyWith(
                color: AppColors.grey600,
              ),
            ),
          ),
          10.height,
        ],
      ),
    );
  }
}
