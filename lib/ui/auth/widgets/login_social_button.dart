import 'package:fitness_app/constants/colors.dart';
import 'package:fitness_app/constants/text_styles.dart';
import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginSocialButton extends StatelessWidget {
  const LoginSocialButton(
      {super.key, required this.text, required this.company});

  final String text;
  final String company;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.r),
        color: AppColors.white,
        border: Border.all(color: AppColors.grey200),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff8B9EB8).withOpacity(0.2),
            blurRadius: 4.r,
            offset: Offset(0, 1.h),
          )
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            width: 28.w,
            height: 26.h,
            child: SvgPicture.asset(
              "assets/icons/${company.toLowerCase()}.svg",
              fit: BoxFit.fitHeight,
            ),
          ),
          16.width,
          Container(
            height: 22.h,
            width: 1.5.w,
            color: AppColors.grey200,
          ),
          16.width,
          SizedBox(
            width: 178.w,
            child: Text(
              text,
              style: TextStyles.mainTextSemiBold,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
