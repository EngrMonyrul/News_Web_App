import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_web/utils/enums/layouts.dart';

extension ContextExt on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;

  ThemeData get theme => Theme.of(this);

  Layouts get layout {
    if (screenSize.width < 850) {
      return Layouts.mobile;
    } else if (screenSize.width >= 850 && screenSize.width < 1100) {
      return Layouts.laptop;
    } else {
      return Layouts.desktop;
    }
  }
}
