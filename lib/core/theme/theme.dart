import 'package:flutter/material.dart';
import 'package:vordic_user/core/theme/app_palette.dart';

class AppTheme {
  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPalette.backgroundColor,
    primaryColor: AppPalette.greyColor,
    colorScheme: const ColorScheme.dark(
      primary: AppPalette.whiteColor,
      secondary: AppPalette.greyColor,
      surface: AppPalette.backgroundColor,
      error: AppPalette.errorColor,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromRGBO(24, 24, 32, 1),
      elevation: 0,
      scrolledUnderElevation: 0,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: AppPalette.whiteColor,
      cursorColor: AppPalette.whiteColor,
      selectionHandleColor: AppPalette.whiteColor,
    ),
  );
}
