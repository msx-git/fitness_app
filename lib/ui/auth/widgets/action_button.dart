import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/text_styles.dart';

class ActionButton extends StatelessWidget {
  const ActionButton(
      {super.key,
      required this.text,
      required this.buttonColor,
      required this.textColor});

  final String text;
  final Color buttonColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 17.h),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: Text(
        text,
        style: TextStyles.buttonText.copyWith(color: textColor),
      ),
    );
  }
}
