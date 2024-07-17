import 'package:flutter/material.dart';

class ColorSchemeConfig {
  ColorSchemeConfig._();

  static const primaryColor = Colors.red;
  static const commonBlack = Colors.black;
  static const commonWhite = Colors.white;
  static const tertiaryColor = Colors.grey;

  static final lightColorScheme = ColorScheme.fromSeed(
    seedColor: primaryColor,
    primary: primaryColor,
    onPrimary: commonWhite,
    surface: commonWhite,
    onSurface: commonBlack,
    tertiary: tertiaryColor,
    onTertiary: commonBlack,
  );
}
