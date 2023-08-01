import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'theme_colors.dart';

final lightTextTheme = GoogleFonts.montserratTextTheme(
  const TextTheme().copyWith(
    displayLarge: const TextStyle(),
    displayMedium: const TextStyle(),
    displaySmall: const TextStyle(),
    headlineLarge: const TextStyle(),
    headlineMedium: const TextStyle(),
    headlineSmall: const TextStyle(),
    titleLarge: const TextStyle(color: kLightTitleColor),
    titleMedium: const TextStyle(color: kLightTitleColor),
    titleSmall: TextStyle(
      color: kLightTitleColor,
      fontSize: 14.sp,
      fontWeight: FontWeight.w700,
    ),
    bodyLarge: const TextStyle(),
    bodyMedium: const TextStyle(),
    bodySmall: const TextStyle(),
    labelLarge: const TextStyle(),
    labelMedium: const TextStyle(),
    labelSmall: const TextStyle(),
  ),
);

final darkTextTheme = GoogleFonts.montserratTextTheme(
  const TextTheme().copyWith(
    displayLarge: const TextStyle(),
    displayMedium: const TextStyle(),
    displaySmall: const TextStyle(),
    headlineLarge: const TextStyle(),
    headlineMedium: const TextStyle(),
    headlineSmall: const TextStyle(),
    titleLarge: const TextStyle(color: kDarkTitleColor),
    titleMedium: const TextStyle(color: kDarkTitleColor),
    titleSmall: TextStyle(
      color: kDarkTitleColor,
      fontSize: 14.sp,
      fontWeight: FontWeight.w700,
    ),
    bodyLarge: const TextStyle(),
    bodyMedium: const TextStyle(),
    bodySmall: const TextStyle(),
    labelLarge: const TextStyle(),
    labelMedium: const TextStyle(),
    labelSmall: const TextStyle(),
  ),
);
// final textTheme = TextTheme(
//   displayLarge: GoogleFonts.redHatDisplay(
//     fontWeight: FontWeight.w400,
//     fontSize: 57.sp,
//     height: 64 / 57,
//     letterSpacing: -0.25,
//   ),
//   displayMedium: GoogleFonts.redHatDisplay(
//     fontWeight: FontWeight.w400,
//     fontSize: 45.sp,
//     height: 52 / 45,
//   ),
// );
