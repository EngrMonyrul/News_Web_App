import 'package:flutter/material.dart';
import 'package:news_web/utils/extensions/context_ext.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    super.key,
    this.mobile,
    this.laptop,
    this.desktop,
  });

  final Widget? mobile;
  final Widget? laptop;
  final Widget? desktop;

  @override
  Widget build(BuildContext context) {
    if (context.layout.isMobile) {
      return mobile ?? const Text("Mobile");
    } else if (context.layout.isLaptop) {
      return laptop ?? const Text("Laptop");
    } else {
      return desktop ?? const Text("Desktop");
    }
  }
}
