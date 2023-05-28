
import 'package:flutter/material.dart';
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
      secondary: Color(0xFFF5F5F5),
      onSecondary: Color(0xFFBABABB),
      brightness: Brightness.light,
      tertiary: Color(0x8BCDDED5),
      primaryContainer: Color(0xFFFEFFFE),
      shadow: Color(0xFFEEFAF2),
        onSurfaceVariant: Color(0xFF9E9E9E),
        tertiaryContainer: Color(0xFFE3F5E9)
    ),
    textTheme:  const TextTheme(
      bodyLarge:  TextStyle(
        color: Color(0xFF212121),
        fontSize: 16
      ),
      bodyMedium: TextStyle(
          color: Color(0xFF212121)
      ),
      bodySmall: TextStyle(
          color: Color(0xFF616161)
      ),
      titleMedium: TextStyle(
        color: Color(0xDE04294E)
      ),

      labelLarge:TextStyle(
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
        secondary:  Color(0xFF1F222A),
          onSecondary: Color(0xFF737376),
        onPrimary: Colors.white,
          tertiary: Color(0xFF192E26),
          primaryContainer: Color(0xFF1F222A),
          shadow: Color(0xFF1F2D2D),
        onSurfaceVariant: Color(0xFF59595A),
        tertiaryContainer: Color(0xFF35383F)

      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
            color: Color(0xFFFFFFFF),
          fontSize: 16
        ),
        bodyMedium: TextStyle(
            color: Color(0xFFFFFFFF)
        ),
        bodySmall: TextStyle(
            color: Color(0xFFE0E0E0)
        ),
        labelLarge:TextStyle(
            color: Color(0xFFE0E1E3)
        ),
      )
  );
}