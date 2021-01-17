import 'package:flutter/material.dart';
import 'package:testefliper/design-system/theme/text-theme.dart';

import 'colors.dart';

ThemeData theme() {
  // final colorScheme = _buildColorScheme();
  // final primarySwatch = _buildPrimarySwatch();

  return ThemeData(
    primaryColor: ThemeColors.primary,
    scaffoldBackgroundColor: ThemeColors.scaffoldBackground,
    textTheme: textTheme,
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) => ThemeColors.defaultBackground,
        ),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
          (Set<MaterialState> states) => RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
        ),
        side: MaterialStateProperty.resolveWith<BorderSide>(
          (Set<MaterialState> states) => BorderSide(
            color: ThemeColors.primary,
          ),
        ),
        shadowColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) => ThemeColors.buttonShadow,
        ),
        elevation: MaterialStateProperty.resolveWith<double>(
          (Set<MaterialState> states) => 1.0,
        ),
      ),
    ),
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
