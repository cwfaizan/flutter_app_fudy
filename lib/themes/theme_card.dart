import 'package:flutter/material.dart';

import 'theme_colors.dart';

const lightCardTheme = CardTheme(
  color: kWhiteColor,
  surfaceTintColor: kWhiteColor,
  shape: RoundedRectangleBorder(
    side: BorderSide.none,
  ),
);

const darkCardTheme = CardTheme(
  shape: RoundedRectangleBorder(
    side: BorderSide.none,
  ),
);
