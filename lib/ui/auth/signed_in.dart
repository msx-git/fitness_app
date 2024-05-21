import 'package:fitness_app/constants/colors.dart';
import 'package:fitness_app/constants/text_styles.dart';
import 'package:fitness_app/controllers/user_controller.dart';
import 'package:fitness_app/generated/assets.dart';
import 'package:fitness_app/ui/auth/widgets/action_button.dart';
import 'package:fitness_app/ui/onboarding/onboarding.dart';
import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignedIn extends StatelessWidget {
  SignedIn({super.key});

  final userController = UserController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Image.asset(Assets.imagesSignedUserAvatar,
              height: 452.h, width: 375.w, fit: BoxFit.cover),
          48.height,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Text(
              'Hello, ${userController.signedUser.firstName}',
              style: TextStyles.mainTextBold,
            ),
          ),
          10.height,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Text(
              "Happy to see you back. We hope you will have a great training!",
              style: TextStyles.mainTextMedium,
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => Navigator.of(context).pushReplacement(
              CupertinoPageRoute(
                builder: (context) => const Onboarding(),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: const ActionButton(
                text: "Get started",
                buttonColor: AppColors.blue500,
                textColor: AppColors.white,
              ),
            ),
          ),
          24.height,
        ],
      ),
    );
  }
}
