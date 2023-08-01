import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'theme_colors.dart';

// Input textfield decoration
final kOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(12.r),
  borderSide: BorderSide(
    width: 0.w,
    color: kLightOutlineColor,
  ),
);

final kContentPaddingVertical =
    EdgeInsets.symmetric(vertical: 30.h, horizontal: 25.w);

final lightInputDecorationTheme = InputDecorationTheme(
  border: kOutlineInputBorder,
  enabledBorder: kOutlineInputBorder,
  focusedBorder: kOutlineInputBorder,
  filled: true,
  fillColor: kLightPlaceholderColor,
  contentPadding: kContentPaddingVertical,
  hintStyle: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: kLightPlaceholderTextColor,
  ),
);

final darkInputDecorationTheme = InputDecorationTheme(
  border: kOutlineInputBorder,
  enabledBorder: kOutlineInputBorder,
  focusedBorder: kOutlineInputBorder,
  filled: true,
  fillColor: kDarkPlaceholderColor,
  contentPadding: kContentPaddingVertical,
  hintStyle: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: kDarkPlaceholderTextColor,
  ),
);
