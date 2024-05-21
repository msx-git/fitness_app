import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/text_styles.dart';

class DashboardItem extends StatelessWidget {
  const DashboardItem(
      {super.key,
      required this.title,
      required this.amount,
      required this.iconLink,
      required this.iconColor,
      required this.unit});

  final String title;
  final String amount;

  final String unit;
  final String iconLink;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            SvgPicture.asset(iconLink, color: iconColor),
            5.width,
            Text(
              title,
              style: TextStyles.whiteHeadline4,
            )
          ],
        ),
        3.height,
        RichText(
          text: TextSpan(
            text: amount.toString(),
            style: TextStyles.whiteHeadline1.copyWith(fontSize: 20.sp),
            children: [
              TextSpan(
                text: unit,
                style: TextStyles.whiteHeadlineSmall,
              ),
            ],
          ),
        )
      ],
    );
  }
}
