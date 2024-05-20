import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';

class QuoteItem extends StatelessWidget {
  const QuoteItem(
      {super.key,
      required this.quote,
      required this.name,
      required this.profession,
      required this.imageLink});

  final String quote;
  final String name;
  final String profession;
  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 16.h,
        ),
        margin: EdgeInsets.symmetric(horizontal: 12.w),
        decoration: BoxDecoration(
          color: const Color(0xff202326).withOpacity(0.15),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              quote,
              style: TextStyles.quoteStyle,
            ),
            14.height,
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.asset(
                  imageLink,
                  height: 42.w,
                  width: 42.w,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                name,
                style: TextStyles.buttonText.copyWith(
                  color: AppColors.white,
                ),
              ),
              subtitle: Text(
                profession,
                style: TextStyles.quoteStyle.copyWith(
                  color: AppColors.grey300,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
