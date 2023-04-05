
import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';
//TODO LATER EDIT THEME
class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Urbanist',
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF1BAB4B),
      onPrimary: Colors.white,
      background:  Color(0xFFF5F5F5),
      onBackground:  Color(0xFF212121),
      secondary: Color(0xFFD2D2D2),
      onSecondary: Color(0xFFBABABB),
      brightness: Brightness.light,
      tertiary: Color(0x8BCDDED5)
    ),
    textTheme:  TextTheme(
      bodyLarge:  TextStyle(
        color: const Color(0xFF212121),
        fontSize: 16.sp
      ),
      bodyMedium: const TextStyle(
          color: Color(0xFF212121)
      ),
      bodySmall: const TextStyle(
          color: Color(0xFF616161)
      ),
      titleMedium: const TextStyle(
        color: Color(0xDE04294E)
      ),

      labelLarge:const TextStyle(
          color: Color(0xFF737273)
      ),
    )
  );

  static ThemeData darkTheme = ThemeData(
      fontFamily: 'Urbanist',
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        primary:Color(0xFF1BAB4B),
        background: Color(0xFF181A20),
        onBackground:  Color(0xFFFFFFFF),
        secondary:  Color(0xFFEDF2F2),
          onSecondary: Color(0xFF737376),
        onPrimary: Colors.white,
          tertiary: Color(0xFF192E26)
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
            color: const Color(0xFFFFFFFF),
          fontSize: 16.sp
        ),
        bodyMedium: const TextStyle(
            color: Color(0xFFFFFFFF)
        ),
        bodySmall: const TextStyle(
            color: Color(0xFFE0E0E0)
        ),
        labelLarge:const TextStyle(
            color: Color(0xFFE0E1E3)
        ),
      )
  );
}