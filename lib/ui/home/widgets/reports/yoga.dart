import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/text_styles.dart';
import '../../../../generated/assets.dart';
import 'report_appbar.dart';

class YogaReports extends StatelessWidget {
  const YogaReports({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          SafeArea(child: 16.height),
          /// Custom Appbar
          const ReportAppbar(activity: 'Yoga'),
          12.height,
          Text('Enjoy your cycling routine'),
        ],
      ),
    );
  }
}

