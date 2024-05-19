import 'package:fitness_app/constants/colors.dart';
import 'package:fitness_app/constants/text_styles.dart';
import 'package:fitness_app/generated/assets.dart';
import 'package:fitness_app/ui/auth/widgets/action_button.dart';
import 'package:fitness_app/ui/auth/widgets/page_view_item.dart';
import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Entrance extends StatefulWidget {
  const Entrance({super.key});

  @override
  State<Entrance> createState() => _EntranceState();
}

class _EntranceState extends State<Entrance> {
  final controller = PageController();

  int pageIndex = 0;

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
                AppColors.mainBlue,
                Color(0xff1268CC),
              ]),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 580.h,
              width: 375.w,
              child: PageView(
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
                onPageChanged: (value) => setState(() => pageIndex = value),
              ),
            ),
            14.height,
            AnimatedSmoothIndicator(
              activeIndex: pageIndex,
              count: 4,
              effect: WormEffect(
                  activeDotColor: AppColors.white,
                  dotColor: const Color(0xffD1E6FF),
                  dotHeight: 10.h,
                  dotWidth: 10.w),
            ),
            40.height,
            const ActionButton(
              text: 'Join now',
              buttonColor: AppColors.white,
              textColor: AppColors.mainBlue,
            ),
            8.height,
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Already a member? ',
                  style:
                      TextStyles.buttonText.copyWith(color: AppColors.white2),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Log in',
                    style:
                        TextStyles.buttonText.copyWith(color: AppColors.white2),
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
