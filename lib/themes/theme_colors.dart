import 'package:flutter/material.dart';

const kLightPrimaryColor = Color(0xff473596);
const kLightSecondaryColor = Color(0xFF255469);
const kLightTertiaryColor = Color(0xFF46626d);
const kLightErrorColor = Color(0xFFBA1A1A);
const kLightBackgroundColor = Color(0xFFf1f5f8);
const kLightSurfaceColor = Color(0xFFFAFCFF);
const kLightOutlineColor = Color(0xFF71787E);
const kLightShadowColor = Color(0xFF000000);

const kLightBodyTextColor = Color(0xff1F1A3D);
const kLightPlaceholderColor = Color(0xFFE8EAF0);
const kLightPlaceholderTextColor = Color(0xFFC6CAD3); //Color(0xffF5F6FA);

const kDarkPrimaryColor = Color(0xFFD9D9D9);
const kDarkSecondaryColor = Color(0xFF70D2FF);
const kDarkTertiaryColor = Color(0xFF5DD5FB);
const kDarkErrorColor = Color(0xFFFFB4AB);
const kDarkBackgroundColor = Color(0xFF001F2A);
const kDarkSurfaceColor = Color(0xFF001F2A);
const kDarkOutlineColor = Color(0xFF8B9297);
const kDarkShadowColor = Color(0xFF000000);

const kDarkBodyTextColor = Color(0xFFD9D9D9); //Color(0xff999999);
const kDarkPlaceholderColor = Color(0xFF7681a4);
const kDarkPlaceholderTextColor = Color(0xFF525C7C);

const kWhiteColor = Color(0xFFffffff);
const kBlackColor = Colors.black;
const kGrayColor = Color(0xFF8D989D);

final lightColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.light,
  seedColor: const Color(0xff473596),
  primary: kLightPrimaryColor,
  secondary: kLightSecondaryColor,
  tertiary: kLightTertiaryColor,
  error: kLightErrorColor,
  background: kLightBackgroundColor,
  surface: kLightSurfaceColor,
  outline: kLightOutlineColor,
  shadow: kLightShadowColor,
);

final darkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color(0xff473596),
  primary: kDarkPrimaryColor,
  secondary: kDarkSecondaryColor,
  tertiary: kDarkTertiaryColor,
  error: kDarkErrorColor,
  background: kDarkBackgroundColor,
  surface: kDarkSurfaceColor,
  outline: kDarkOutlineColor,
  shadow: kDarkShadowColor,
);