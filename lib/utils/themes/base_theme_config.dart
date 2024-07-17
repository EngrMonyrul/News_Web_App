import 'package:flutter/material.dart';
import 'package:news_web/utils/themes/color_scheme_config.dart';
import 'package:news_web/utils/themes/text_theme_config.dart';

class BaseThemeConfig {
  BaseThemeConfig._();

  static final lightTheme = ThemeData(
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: "Poppins",
    colorScheme: ColorSchemeConfig.lightColorScheme,
    textTheme: TextThemeConfig.lightTextTheme,
  );
}
