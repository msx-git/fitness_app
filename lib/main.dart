import 'package:fitness_app/ui/auth/entrance.dart';
import 'package:fitness_app/ui/home/goals.dart';
import 'package:fitness_app/ui/home/home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
    enabled: kReleaseMode,
    builder: (context) => const MyApp(), // Wrap your app
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        builder: DevicePreview.appBuilder,
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}