import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizedBoxExtension on int {
  SizedBox get height => SizedBox(height: h);

  SizedBox get width => SizedBox(width: w);
}
