import 'package:flutter/material.dart';

final blue = const Color(0xFF3B5CB8);
final darkGrey = const Color(0xFF606377);
final grey = const Color(0xFF9AA3BC);
final lightGrey = const Color(0xFFE8EBF6);
final lighterGrey = const Color(0x0000029);
final white = const Color(0xFFFFFFFF);

class ThemeColors {
  static get primary => blue;
  static get lightFont => darkGrey;
  static get defaultBackground => white;
  static get scaffoldBackground => lightGrey;
  static get divider => grey;
  static get containerShadow => grey;
  static get buttonShadow => lighterGrey;
  static get greyIcon => grey;
}
