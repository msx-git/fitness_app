import 'package:fitness_app/constants/colors.dart';
import 'package:fitness_app/constants/text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.r),
          ),
          activeColor: AppColors.blue500,
          side: const BorderSide(color: AppColors.grey300),
          value: value,
          onChanged: (val) => setState(() => value = val!),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: 'I agree to Platform',
              style: TextStyles.mainTextRegular,
              children: [
                TextSpan(
                  text: ' Terms of Serivce ',
                  style: TextStyles.mainTextRegular.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      return showLicensePage(context: context);
                    },
                ),
                const TextSpan(text: 'and'),
                TextSpan(
                  text: ' Privacy Policy',
                  style: TextStyles.mainTextRegular.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      return showLicensePage(context: context);
                    },
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
