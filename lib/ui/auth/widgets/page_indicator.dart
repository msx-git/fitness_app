import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../constants/colors.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({super.key, required this.controller, required this.count});
  final PageController controller;
  final int count;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: count,
      effect: WormEffect(
        activeDotColor: AppColors.white,
        dotColor: const Color(0xffD1E6FF),
        dotHeight: 10.h,
        dotWidth: 10.w,
      ),
    );
  }
}
