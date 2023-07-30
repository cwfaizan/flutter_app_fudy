import 'package:flutter/material.dart';

const kLightPrimaryColor = Color(0xFF0d4159);
const kLightPrimaryContainerColor = Color(0xFFC5E7FF);
const kLightOnPrimaryContainerColor = Color(0xFF001E2D);
const kLightSecondaryColor = Color(0xFF255469);
const kLightSecondaryContainerColor = Color(0xFFC0E8FF);
const kLightOnSecondaryContainerColor = Color(0xFF001E2B);
const kLightTertiaryColor = Color(0xFF46626d);
const kLightTertiaryContainerColor = Color(0xFFB7EAFF);
const kLightOnTertiaryContainerColor = Color(0xFF001F28);
const kLightErrorColor = Color(0xFFBA1A1A);
const kLightErrorContainerColor = Color(0xFFFFDAD6);
const kLightOnErrorContainerColor = Color(0xFF410002);
const kLightBgColor = Color(0xFFf1f5f8); //Color(0xFFD9D9D9); Color(0xFFFAFCFF)
const kLightOnBgColor = Color(0xFF001F2A);
const kLightSurfaceColor = Color(0xFFFAFCFF);
const kLightOnSurfaceColor = Color(0xFF001F2A);
const kLightSurfaceVariantColor = Color(0xFFDDE3EA);
const kLightOnSurfaceVariantColor = Color(0xFF41484D);
const kLightOutlineColor = Color(0xFF71787E);
const kLightOnInverseSurfaceColor = Color(0xFFE1F4FF);
const kLightInverseSurfaceColor = Color(0xFF003547);
const kLightInversePrimaryColor = Color(0xFF7FD0FF); // d9d9d9
const kLightShadowColor = Color(0xFF000000);
const kLightSurfaceTintColor = Color(0xFF00658C);
const kLightOutlineVariantColor = Color(0xFFC1C7CE);
const kLightScrimColor = Color(0xFF000000);
const kLightOnColor = Colors.white;
const kLightBodyTextColor = Color(0xff1F1A3D);
const kLightPlaceholderColor = Color(0xFFE8EAF0);
const kLightPlaceholderTextColor = Color(0xFFC6CAD3); //Color(0xffF5F6FA);

const kDarkPrimaryColor = Color(0xFFD9D9D9);
const kDarkOnPrimaryColor = Color(0xFF00344A);
const kDarkPrimaryContainerColor = Color(0xFF004C6A);
const kDarkOnPrimaryContainerColor = Color(0xFFC5E7FF);
const kDarkSecondaryColor = Color(0xFF70D2FF);
const kDarkOnSecondaryColor = Color(0xFF003547);
const kDarkSecondaryContainerColor = Color(0xFF004D66);
const kDarkOnSecondaryContainerColor = Color(0xFFC0E8FF);
const kDarkTertiaryColor = Color(0xFF5DD5FB);
const kDarkOnTertiaryColor = Color(0xFF003543);
const kDarkTertiaryContainerColor = Color(0xFF004E61);
const kDarkOnTertiaryContainerColor = Color(0xFFB7EAFF);
const kDarkErrorColor = Color(0xFFFFB4AB);
const kDarkErrorContainerColor = Color(0xFF93000A);
const kDarkOnErrorColor = Color(0xFF690005);
const kDarkOnErrorContainerColor = Color(0xFFFFDAD6);
const kDarkBgColor = Color(0xFF001F2A);
const kDarkOnBgColor = Color(0xFFBFE9FF);
const kDarkSurfaceColor = Color(0xFF001F2A);
const kDarkOnSurfaceColor = Color(0xFFBFE9FF);
const kDarkSurfaceVariantColor = Color(0xFF41484D);
const kDarkOnSurfaceVariantColor = Color(0xFFC1C7CE);
const kDarkOutlineColor = Color(0xFF8B9297);
const kDarkOnInverseSurfaceColor = Color(0xFF001F2A);
const kDarkInverseSurfaceColor = Color(0xFFBFE9FF);
const kDarkInversePrimaryColor = Color(0xFF00658C);
const kDarkShadowColor = Color(0xFF000000);
const kDarkSurfaceTintColor = Color(0xFFD9D9D9);
const kDarkOutlineVariantColor = Color(0xFF41484D);
const kDarkScrimColor = Color(0xFF000000);

const kDarkBodyTextColor = Color(0xFFD9D9D9); //Color(0xff999999);
const kDarkPlaceholderColor = Color(0xFF7681a4);
const kDarkPlaceholderTextColor = Color(0xFF525C7C);

const kWhiteColor = Color(0xFFffffff);
const kBlackColor = Colors.black;
const kGrayColor = Color(0xFF8D989D);

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: kLightPrimaryColor,
  onPrimary: kLightOnColor,
  primaryContainer: kLightPrimaryContainerColor,
  onPrimaryContainer: kLightOnPrimaryContainerColor,
  secondary: kLightSecondaryColor,
  onSecondary: kLightOnColor,
  secondaryContainer: kLightSecondaryContainerColor,
  onSecondaryContainer: kLightOnSecondaryContainerColor,
  tertiary: kLightTertiaryColor,
  onTertiary: kLightOnColor,
  tertiaryContainer: kLightTertiaryColor,
  onTertiaryContainer: kLightTertiaryContainerColor,
  error: kLightErrorColor,
  errorContainer: kLightErrorContainerColor,
  onError: kLightOnColor,
  onErrorContainer: kLightOnErrorContainerColor,
  background: kLightBgColor,
  onBackground: kLightOnBgColor,
  surface: kLightSurfaceColor,
  onSurface: kLightOnSurfaceColor,
  surfaceVariant: kLightSurfaceVariantColor,
  onSurfaceVariant: kLightOnSurfaceVariantColor,
  outline: kLightOutlineColor,
  onInverseSurface: kLightOnInverseSurfaceColor,
  inverseSurface: kLightInverseSurfaceColor,
  inversePrimary: kLightInversePrimaryColor,
  shadow: kLightShadowColor,
  surfaceTint: kLightSurfaceTintColor,
  outlineVariant: kLightOutlineVariantColor,
  scrim: kLightScrimColor,
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: kDarkPrimaryColor,
  onPrimary: kDarkOnPrimaryColor,
  primaryContainer: kDarkPrimaryContainerColor,
  onPrimaryContainer: kDarkOnPrimaryContainerColor,
  secondary: kDarkSecondaryColor,
  onSecondary: kDarkOnSecondaryColor,
  secondaryContainer: kDarkSecondaryContainerColor,
  onSecondaryContainer: kDarkOnSecondaryContainerColor,
  tertiary: kDarkTertiaryColor,
  onTertiary: kDarkOnTertiaryColor,
  tertiaryContainer: kDarkTertiaryContainerColor,
  onTertiaryContainer: kDarkOnTertiaryContainerColor,
  error: kDarkErrorColor,
  errorContainer: kDarkErrorContainerColor,
  onError: kDarkOnErrorColor,
  onErrorContainer: kDarkOnErrorContainerColor,
  background: kDarkBgColor,
  onBackground: kDarkOnBgColor,
  surface: kDarkSurfaceColor,
  onSurface: kDarkOnSurfaceColor,
  surfaceVariant: kDarkSurfaceVariantColor,
  onSurfaceVariant: kDarkOnSurfaceVariantColor,
  outline: kDarkOutlineColor,
  onInverseSurface: kDarkOnInverseSurfaceColor,
  inverseSurface: kDarkInverseSurfaceColor,
  inversePrimary: kDarkInversePrimaryColor,
  shadow: kDarkShadowColor,
  surfaceTint: kDarkSurfaceTintColor,
  outlineVariant: kDarkOutlineVariantColor,
  scrim: kDarkScrimColor,
);
