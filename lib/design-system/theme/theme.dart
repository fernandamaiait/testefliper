import 'package:flutter/material.dart';
import 'package:testefliper/design-system/theme/text-theme.dart';

import 'colors.dart';

ThemeData theme() {
  // final colorScheme = _buildColorScheme();
  // final primarySwatch = _buildPrimarySwatch();

  return ThemeData(
    primaryColor: primary,
    scaffoldBackgroundColor: scaffold,
    textTheme: textTheme,
    // fontFamily: 'NunitoSans',
    //  brightness: Brightness.light,
    //  textTheme: textTheme,
    //  primarySwatch: primarySwatch,
    //  primaryColorBrightness: Brightness.dark,
    //  primaryColorLight: const Color(0xFF0086A3),
    //  primaryTextTheme: textTheme,
    // colorScheme: colorScheme,
  );
}
