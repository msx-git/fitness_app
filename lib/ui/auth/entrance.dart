import 'package:fitness_app/ui/auth/sign_in.dart';
import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';
import '../../generated/assets.dart';
import 'sign_up.dart';
import 'widgets/action_button.dart';
import 'widgets/page_indicator.dart';
import 'widgets/page_view_item.dart';

// import '/constants/colors.dart';
// import '/constants/text_styles.dart';
// import '/generated/assets.dart';
// import '/ui/auth/sign_in.dart';
// import '/ui/auth/sign_up.dart';
// import '/ui/auth/widgets/action_button.dart';
// import '/ui/auth/widgets/page_indicator.dart';
// import '/ui/auth/widgets/page_view_item.dart';
// import '/utils/extensions.dart';

class Entrance extends StatelessWidget {
  Entrance({super.key});

  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 812.h,
        width: 375.w,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.blue500,
              Color(0xff1268CC),
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 580.h,
              width: 375.w,
              child: PageView(
                controller: controller,
                children: const [
                  PageViewItem(
                    imageLink: Assets.imagesGridImages1,
                    headline: "Sport as a hobby",
                    subHeadline:
                        "This is the perfect place to keep track of your hobbies and practice the sport you like!",
                  ),
                  PageViewItem(
                    imageLink: Assets.imagesGridImages2,
                    headline: "Sport as a hobby",
                    subHeadline:
                        "Find Your Fit: Explore Endless Sports and Activities.",
                  ),
                  PageViewItem(
                    imageLink: Assets.imagesGridImages3,
                    headline: "Sport as a hobby",
                    subHeadline:
                        "Join the Community: Connect with Fellow Sports Enthusiasts.",
                  ),
                  PageViewItem(
                    imageLink: Assets.imagesGridImages4,
                    headline: "Sport as a hobby",
                    subHeadline:
                        "Sweat, Smile, Conquer: Make Sports Your Journey to Greatness.",
                  ),
                ],
              ),
            ),
            14.height,
            PageIndicator(controller: controller, count: 4),
            40.height,
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                CupertinoPageRoute(builder: (context) => SignUp()),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: const ActionButton(
                  text: 'Join now',
                  buttonColor: AppColors.white,
                  textColor: AppColors.blue500,
                ),
              ),
            ),
            8.height,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Already a member? ',
                  style:
                      TextStyles.buttonText.copyWith(color: AppColors.grey100),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).push(
                    CupertinoPageRoute(builder: (context) => SignIn()),
                  ),
                  child: Text(
                    'Log in',
                    style: TextStyles.buttonText
                        .copyWith(color: AppColors.grey100),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
