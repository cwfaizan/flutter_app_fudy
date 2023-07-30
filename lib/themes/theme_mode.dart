import 'package:flutter/material.dart';
import 'theme_card.dart';
import 'theme_colors.dart';
import 'theme_input_decoration.dart';
import 'typography.dart';

// Light theme
final lightThemeData = ThemeData(
  useMaterial3: true,
  colorScheme: lightColorScheme,
  textTheme: lightTextTheme,
  cardTheme: lightCardTheme,
  inputDecorationTheme: lightInputDecorationTheme,
);

// Dark theme
final darkThemeData = ThemeData(
  useMaterial3: true,
  colorScheme: darkColorScheme,
  textTheme: darkTextTheme,
  cardTheme: darkCardTheme,
  inputDecorationTheme: darkInputDecorationTheme,
);
