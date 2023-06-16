import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_izi/modules/home/home.dart';
import 'package:test_izi/modules/order/order.dart';
import 'package:test_izi/theme/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          theme: AppTheme.lightThem,
          debugShowCheckedModeBanner: false,
          home:  const HomePage(),
        );
      },
    );
  }
}
