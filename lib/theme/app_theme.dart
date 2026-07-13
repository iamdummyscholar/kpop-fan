// Import Flutter's Material Design library
import 'package:flutter/material.dart';

// ═══════════════════════════════════════════════════════════
// APP THEME — Centralized purple color scheme
// ═══════════════════════════════════════════════════════════

class AppTheme {
  
  // Primary purple — main brand color
  static const Color primaryPurple = Color(0xFF6C5CE7);
  
  // Darker purple — gradient end, shadows
  static const Color darkPurple = Color(0xFF4834D4);
  
  // Light purple — subtle backgrounds
  static const Color lightPurple = Color(0xFFA29BFE);
  
  // Very light purple — input field backgrounds
  static const Color veryLightPurple = Color(0xFFF3F0FF);
  
  // Gray — subtitle text
  static const Color textLight = Color(0xFF636E72);

  // ThemeData = all visual settings for the app
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryPurple,
        primary: primaryPurple,
        secondary: darkPurple,
        surface: Colors.white,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: darkPurple,
      ),
      scaffoldBackgroundColor: veryLightPurple,
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: darkPurple,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          color: darkPurple,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: textLight,
        ),
      ),
    );
  }
}