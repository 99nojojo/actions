
import 'package:flutter/material.dart';

class GlobalThemData {
  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);
  static ThemeData lightThemeData =
      themeData(lightColorScheme, _lightFocusColor);
  static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    var isDark = colorScheme.brightness == Brightness.dark;
    return ThemeData(
      colorScheme: colorScheme,
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
      tabBarTheme: TabBarTheme(
          dividerColor:
              isDark ? const Color(0xff323232) : const Color(0xff343434),
          labelColor:
              isDark ? const Color(0xffe1e1e1) : const Color(0xff343434),
          unselectedLabelColor:
              isDark ? const Color(0xff9a9a9a) : const Color(0xff949494)),
      bottomNavigationBarTheme:
          BottomNavigationBarThemeData(backgroundColor: colorScheme.background),
    );
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Color(0xFFB93C5D),
    onPrimary: Colors.black,
    secondary: Color(0xFFEFF3F3),
    onSecondary: Color(0xFF322942),
    error: Colors.redAccent,
    onError: Colors.white,
    background: Colors.white,
    //Color(0xFFE6EBEB),
    onBackground: Colors.white,
    surface: Color(0xFFFAFBFB),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
    primaryContainer: Colors.white,
  );
  static const ColorScheme darkColorScheme = ColorScheme(
      primary: Color(0xFFFF8383),
      secondary: Color(0xFF4D1F7C),
      background: Colors.black,
      //Color(0xFF241E30),
      surface: Color(0xFF1F1929),
      onBackground: Color(0x0DFFFFFF),
      error: Colors.redAccent,
      onError: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.white,
      brightness: Brightness.dark,
      primaryContainer: Colors.black);
}
