// ignore_for_file: prefer_initializing_formals

import 'package:flutter/material.dart';
import 'package:flutter_skeleton/core/base_model.dart';
import 'package:flutter_skeleton/core/view_model_state.dart';

class ColorService {
  ColorService._internal();
  static final ColorService _instance = ColorService._internal();
  factory ColorService() {
    return _instance;
  }

  ColorTheme darkTheme = ColorTheme(
      background: const Color(0xFF232C33),
      primary: const Color(0xFF2F394D),
      secondary: const Color(0xFFC4C4C4),
      accent: const Color(0xFF8C1DB4),
      text: const Color(0xFFFFFFFF));

  ColorTheme lightTheme = ColorTheme(
      background: const Color(0xFFFFFFFF),
      primary: const Color(0xFF2F394D),
      secondary: const Color(0xFFC4C4C4),
      accent: const Color(0xFF8C1DB4),
      text: const Color(0xFF000000));

  bool darkMode = true;

  Color get background {
    return darkMode ? darkTheme.background : lightTheme.background;
  }

  Color get primary {
    return darkMode ? darkTheme.primary : lightTheme.primary;
  }

  Color get secondary {
    return darkMode ? darkTheme.secondary : lightTheme.secondary;
  }

  Color get accent {
    return darkMode ? darkTheme.accent : lightTheme.accent;
  }

  Color get text {
    return darkMode ? darkTheme.text : lightTheme.text;
  }
}

class ColorTheme {
  ColorTheme(
      {required Color background,
      required Color primary,
      required Color secondary,
      required Color accent,
      required Color text}) {
    this.background = background;
    this.primary = primary;
    this.secondary = secondary;
    this.accent = accent;
    this.text = text;
  }

  Color background = const Color(0xFFFFFFFF);
  Color primary = const Color(0xFF2F394D);
  Color secondary = const Color(0xFFC4C4C4);
  Color accent = const Color(0xFF8C1DB4);
  Color text = const Color(0xFF000000);
}
