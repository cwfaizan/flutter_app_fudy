import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'pages/favourite_card_page.dart';
import 'pages/login_page.dart';
import 'themes/theme_mode.dart';

// import 'pages/setting_page.dart';
// import 'widgets/transcation_history_content.dart';

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
        themeMode: ThemeMode.system,
        theme: lightThemeData,
        darkTheme: darkThemeData,
        home: const LoginPage(),
      ),
      designSize: const Size(414, 896),
    );
  }
}
