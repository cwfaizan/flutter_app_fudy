import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fudy/pages/onboarding_page.dart';

import 'themes/theme_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        themeMode: ThemeMode.system,
        theme: lightThemeData,
        darkTheme: darkThemeData,
        home: OnboardingPage(),
      ),
      designSize: const Size(414, 896),
    );
  }
}
