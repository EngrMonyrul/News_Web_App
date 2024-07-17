import 'package:flutter/material.dart';
import 'package:news_web/utils/themes/color_scheme_config.dart';

class TextThemeConfig {
  TextThemeConfig._();

  static final lightTextTheme = TextTheme(
    labelSmall: const TextStyle().copyWith(fontSize: 8, fontWeight: FontWeight.w500, color: ColorSchemeConfig.commonBlack),
    labelMedium: const TextStyle().copyWith(fontSize: 10, fontWeight: FontWeight.normal, color: ColorSchemeConfig.commonBlack),
    labelLarge: const TextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: ColorSchemeConfig.commonBlack),

    bodySmall: const TextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.bold, color: ColorSchemeConfig.commonBlack),
    bodyMedium: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.normal, color: ColorSchemeConfig.commonBlack),
    bodyLarge: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w700, color: ColorSchemeConfig.commonBlack),

    titleSmall: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w700, color: ColorSchemeConfig.commonBlack),
    titleMedium: const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.normal, color: ColorSchemeConfig.commonBlack),
    titleLarge: const TextStyle().copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: ColorSchemeConfig.commonBlack),

    headlineSmall: const TextStyle().copyWith(fontSize: 20, fontWeight: FontWeight.w700, color: ColorSchemeConfig.commonBlack),
    headlineMedium: const TextStyle().copyWith(fontSize: 22, fontWeight: FontWeight.normal, color: ColorSchemeConfig.commonBlack),
    headlineLarge: const TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w500, color: ColorSchemeConfig.commonBlack),

    displaySmall: const TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w500, color: ColorSchemeConfig.commonBlack),
    displayMedium: const TextStyle().copyWith(fontSize: 28, fontWeight: FontWeight.normal, color: ColorSchemeConfig.commonBlack),
    displayLarge: const TextStyle().copyWith(fontSize: 35, fontWeight: FontWeight.w500, color: ColorSchemeConfig.commonBlack),
  );
}
