import 'package:flutter/material.dart';

import 'widgets/reports/cycling.dart';
import 'widgets/reports/yoga.dart';

class Reports extends StatelessWidget {
  const Reports({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        CyclingReports(),
        YogaReports(),
      ],
    );
  }
}
