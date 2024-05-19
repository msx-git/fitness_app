import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/text_styles.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.imageLink, required this.headline, required this.subHeadline});

  final String imageLink;
  final String headline;
  final String subHeadline;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          imageLink,
          height: 422.h,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        47.height,
        Text(
          headline,
          style: TextStyles.whiteHeadline1,
        ),
        14.height,
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Text(
              subHeadline,
              textAlign: TextAlign.center,
              style: TextStyles.whiteHeadline2,
            ),
          ),
        ),
      ],
    );
  }
}
