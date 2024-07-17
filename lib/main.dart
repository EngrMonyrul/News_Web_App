import 'package:flutter/material.dart';
import 'package:news_web/presentation/home/screen/home_screen.dart';
import 'package:news_web/utils/themes/base_theme_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: BaseThemeConfig.lightTheme,
      home: const HomeScreen(),
    );
  }
}
