import 'package:flutter/material.dart';

import 'color_manager.dart';

class FontSizeManager {
  double get s16 => 16.0;
  double get s18 => 18.0;
  double get s20 => 20.0;
  double get s22 => 22.0;
  double get s24 => 24.0;
  double get s26 => 26.0;
  double get s28 => 28.0;
  double get s30 => 30.0;
  double get s32 => 32.0;
  double get s34 => 34.0;
  double get s36 => 36.0;
  double get s38 => 38.0;
  double get s40 => 40.0;
  double get s42 => 42.0;
  double get s44 => 44.0;
  double get s46 => 46.0;
  double get s48 => 48.0;
  double get s50 => 50.0;
  double get s52 => 52.0;
  double get s54 => 54.0;
  double get s56 => 56.0;
  double get s58 => 58.0;
  double get s60 => 60.0;
  double get s62 => 62.0;
  double get s64 => 64.0;
  double get s66 => 66.0;
  double get s68 => 68.0;
  double get s70 => 70.0;
  double get s72 => 72.0;
  double get s74 => 74.0;
  double get s76 => 76.0;
  double get s78 => 78.0;
  double get s80 => 80.0;
  double get s82 => 82.0;
  double get s84 => 84.0;
  double get s86 => 86.0;
  double get s88 => 88.0;
  double get s90 => 90.0;
  double get s92 => 92.0;
  double get s94 => 94.0;
  double get s96 => 96.0;
  double get s98 => 98.0;
  double get s100 => 100.0;
  double get s102 => 102.0;
  double get s104 => 104.0;
}

class FontManager {
  static const String fontFamily = 'Cairo';

  static final FontSizeManager _fontSizeManager = FontSizeManager();

  static TextStyle get titleSmall => TextStyle(
      fontFamily: fontFamily,
      fontSize: _fontSizeManager.s16,
      fontWeight: FontWeight.bold,
      color: ColorManager.black);
}
