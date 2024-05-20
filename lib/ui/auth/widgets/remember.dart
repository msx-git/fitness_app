import 'package:fitness_app/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';

class Remember extends StatefulWidget {
  const Remember({super.key});

  @override
  State<Remember> createState() => _RememberState();
}

class _RememberState extends State<Remember> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
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
        Text('Remeber information', style: TextStyles.mainTextRegular)
      ],
    );
  }
}
