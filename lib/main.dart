import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fudy/pages/home_page.dart';
import 'package:fudy/pages/onboarding_page.dart';
import 'package:fudy/pages/register_page.dart';

import 'pages/gridview.dart';
import 'pages/home_screen.dart';
import 'pages/otp_page.dart';
import 'widgets/home_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff473596)),
          useMaterial3: true,
        ),
        home: HomeScreen(),
      ),
      designSize: const Size(414, 896),
    );
  }
}
