import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Input textfield decoration
const kOutlineInputBorder = OutlineInputBorder(
  // borderRadius: BorderRadius.circular(10.r),
  borderSide: BorderSide(color: Colors.transparent, width: 0),
);

final kContentPaddingVertical =
    EdgeInsets.symmetric(vertical: 4.h, horizontal: 6.w);

final lightInputDecorationTheme = InputDecorationTheme(
  border: kOutlineInputBorder,
  enabledBorder: kOutlineInputBorder,
  focusedBorder: kOutlineInputBorder,
  filled: true,
  contentPadding: kContentPaddingVertical,
  hintStyle: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  ),
);

final darkInputDecorationTheme = InputDecorationTheme(
  border: kOutlineInputBorder,
  enabledBorder: kOutlineInputBorder,
  focusedBorder: kOutlineInputBorder,
  filled: true,
  contentPadding: kContentPaddingVertical,
  hintStyle: TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  ),
);
