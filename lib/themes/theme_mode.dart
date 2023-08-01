import 'package:flutter/material.dart';
import 'theme_appbar.dart';
import 'theme_card.dart';
import 'theme_colors.dart';
import 'theme_filled_button.dart';
import 'theme_input_decoration.dart';
import 'typography.dart';

// Light theme
final lightThemeData = ThemeData(
  useMaterial3: true,
  appBarTheme: lightAppBarTheme,
  colorScheme: lightColorScheme,
  textTheme: lightTextTheme,
  cardTheme: lightCardTheme,
  filledButtonTheme: lightFilledButtonTheme,
  inputDecorationTheme: lightInputDecorationTheme,
);

// Dark theme
final darkThemeData = ThemeData(
  useMaterial3: true,
  appBarTheme: darkAppBarTheme,
  colorScheme: darkColorScheme,
  textTheme: darkTextTheme,
  cardTheme: darkCardTheme,
  filledButtonTheme: darkFilledButtonTheme,
  inputDecorationTheme: darkInputDecorationTheme,
);
