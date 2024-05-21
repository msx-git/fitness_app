import 'package:fitness_app/constants/colors.dart';
import 'package:fitness_app/generated/assets.dart';
import 'package:fitness_app/ui/home/widgets/custom_appbar.dart';
import 'package:fitness_app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/text_styles.dart';

class Nutritions extends StatelessWidget {
  Nutritions({super.key});

  final List<Map<String, dynamic>> dailyRationList = [
    {
      'imagePath': Assets.imagesBreakfast,
      'rationText': 'Add Breakfast',
      'rationKcal': '700',
      'rationKcalImage': Assets.iconsBlueBullet,
    },
    {
      'imagePath': Assets.imagesLunch,
      'rationText': 'Add Lunch',
      'rationKcal': '950',
      'rationKcalImage': Assets.iconsBlueBullet,
    },
    {
      'imagePath': Assets.imagesDinner,
      'rationText': 'Add Lunch',
      'rationKcal': '700',
      'rationKcalImage': Assets.iconsBlueBullet,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: Column(
        children: [
          SafeArea(child: 16.height),
          const CustomAppBar(title: "Nutrition"),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 0),
              physics: const BouncingScrollPhysics(),
              children: [
                Text(
                  "Healthy body comes with good nutrients",
                  style: TextStyles.mainTextBold,
                ),
                24.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      width: 156.w,
                      height: 200.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.r),
                        color: AppColors.lightGreen500,
                        image: const DecorationImage(
                          image: AssetImage(Assets.imagesKkalLeft),
                          fit: BoxFit.cover,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "420",
                            style: TextStyles.whiteHeadline1
                                .copyWith(fontSize: 20.sp),
                          ),
                          Text(
                            'kcal left',
                            style: TextStyles.whiteHeadline1.copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        containerMeatAndBurner(
                          imagePath: Assets.iconsMeat,
                          kcal: '215 kcal',
                          type: 'Eaten',
                        ),
                        12.height,
                        containerMeatAndBurner(
                          imagePath: Assets.iconsCalories,
                          kcal: '150 kcal',
                          type: 'Calories Burned',
                        ),
                      ],
                    )
                  ],
                ),
                24.height,

                /// fat, carbs, protein
                Container(
                  padding: EdgeInsets.all(16.sp),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff323247).withOpacity(0.04),
                        blurRadius: 20.r,
                        spreadRadius: -2,
                        offset: const Offset(0, 4),
                      ),
                      BoxShadow(
                        color: const Color(0xff0C1A4B).withOpacity(0.08),
                        blurRadius: 5.r,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      infoBar(up: 13, down: 25, text: 'Fat', gram: '86g left'),
                      infoBar(
                          up: 8, down: 30, text: 'Carbs', gram: '128g left'),
                      infoBar(
                          up: 26, down: 12, text: 'Protein', gram: '162g left'),
                    ],
                  ),
                ),
                24.height,

                /// text daily ration
                Text(
                  'Daily ration',
                  style: TextStyles.mainTextBold.copyWith(fontSize: 16.sp),
                ),
                16.height,

                for (var ration in dailyRationList)
                  dailyRationItem(
                    imageLink: ration['imagePath'],
                    rationText: ration['rationText'],
                    rationKcal: ration['rationKcal'],
                    rationKcalImage: ration['rationKcalImage'],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// widget for two containers that are in top
  Widget containerMeatAndBurner({
    required String imagePath,
    required String kcal,
    required String type,
  }) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: 159.w,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 17.5.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff323247).withOpacity(0.04),
            blurRadius: 20.r,
            spreadRadius: -2,
            offset: const Offset(0, 4),
          ),
          BoxShadow(
            color: const Color(0xff0C1A4B).withOpacity(0.08),
            blurRadius: 5.r,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(imagePath, color: AppColors.grey600),
          SizedBox(width: 6.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                kcal,
                style: TextStyles.mainTextSemiBold
                    .copyWith(color: AppColors.grey800),
              ),
              SizedBox(height: 6.h),
              SizedBox(
                width: 107.w,
                child: FittedBox(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.scaleDown,
                  child: Text(
                    type,
                    style: TextStyles.mainTextMedium.copyWith(fontSize: 14.sp),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  /// widget for daily ration
  Widget dailyRationItem({
    required String imageLink,
    required String rationText,
    required String rationKcal,
    required String rationKcalImage,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      padding: EdgeInsets.only(right: 20.w),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(14.r),
          boxShadow: [
            BoxShadow(
              color: const Color(0xff323247).withOpacity(0.02),
              blurRadius: 15.r,
              spreadRadius: -1.5,
              offset: const Offset(0, 3),
            ),
            BoxShadow(
              color: const Color(0xff0C1A4B).withOpacity(0.05),
              blurRadius: 3.75.r,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// food photo
          Image.asset(imageLink, height: 110.h),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  rationText,
                  style: TextStyles.mainTextSemiBold.copyWith(
                    color: AppColors.grey800,
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 3.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: AppColors.grey150),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// svg picture here
                      SvgPicture.asset(rationKcalImage),

                      SizedBox(width: 5.w),
                      Text('$rationKcal kcal'),
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// plus container
          Container(
            height: 46.h,
            width: 46.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.r),
                color: Colors.white,
                border: Border.all(color: const Color(0xFF1B85F3))),
            child: const Icon(
              Icons.add,
              color: Color(0xFF1B85F3),
            ),
          ),
        ],
      ),
    );
  }

  Widget infoBar({
    required String text,
    required String gram,
    required int up,
    required int down,
  }) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              width: 2.w,
              height: up.h,
              decoration: BoxDecoration(
                color: AppColors.lightGreen100,
                borderRadius: BorderRadius.circular(3.r),
              ),
            ),
            Container(
              width: 3.w,
              height: down.h,
              decoration: BoxDecoration(
                color: AppColors.lightGreen500,
                borderRadius: BorderRadius.circular(3.r),
              ),
            ),
          ],
        ),
        SizedBox(width: 8.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text, style: TextStyles.mainTextSemiBold),
            Text(gram, style: TextStyles.mainTextMedium),
          ],
        ),
      ],
    );
  }
}
