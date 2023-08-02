import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'theme_colors.dart';

final _kPadding = EdgeInsets.symmetric(vertical: 20.h);
final _kShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(12.r),
);

final lightFilledButtonTheme = FilledButtonThemeData(
  style: FilledButton.styleFrom(
    padding: _kPadding,
    shape: _kShape,
    textStyle: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w700,
      color: kLightFilledButtonTextColor,
    ),
  ),
);

final darkFilledButtonTheme = FilledButtonThemeData(
  style: FilledButton.styleFrom(
    padding: _kPadding,
    shape: _kShape,
    textStyle: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w700,
      color: kDarkFilledButtonTextColor,
    ),
  ),
);
