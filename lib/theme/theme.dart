

import 'package:flutter/material.dart';

// light mode
ThemeData lightMode = ThemeData(
  brightness: .light,
  colorScheme: ColorScheme.light(
    // Surface colors
    surface: Colors.grey.shade300,
    onSurface: Colors.grey.shade900,
    surfaceContainerHighest: Colors.grey.shade200,
    onSurfaceVariant: Colors.grey.shade700,
    
    // Primary colors
    primary: Colors.grey.shade200,
    onPrimary: Colors.grey.shade900,
    primaryContainer: Colors.grey.shade100,
    onPrimaryContainer: Colors.grey.shade800,
    inversePrimary: Colors.grey.shade800,
    
    // Secondary colors
    secondary: Colors.grey.shade400,
    onSecondary: Colors.white,
    secondaryContainer: Colors.grey.shade300,
    onSecondaryContainer: Colors.grey.shade900,
    
    // Tertiary colors
    tertiary: Colors.grey.shade500,
    onTertiary: Colors.white,
    tertiaryContainer: Colors.grey.shade400,
    onTertiaryContainer: Colors.grey.shade900,
    
    // Borders and outlines
    outline: Colors.grey.shade400,
    outlineVariant: Colors.grey.shade300,
    
    // Error colors
    error: Colors.red.shade400,
    onError: Colors.white,
    errorContainer: Colors.red.shade100,
    onErrorContainer: Colors.red.shade900,
  ),
);

// dark mode
ThemeData darkMode = ThemeData(
  brightness: .dark,
  colorScheme: ColorScheme.dark(
    // Surface colors
    surface: Colors.grey.shade900,
    onSurface: Colors.grey.shade100,
    surfaceContainerHighest: Colors.grey.shade800,
    onSurfaceVariant: Colors.grey.shade300,
    
    // Primary colors
    primary: Colors.grey.shade800,
    onPrimary: Colors.grey.shade100,
    primaryContainer: Colors.grey.shade700,
    onPrimaryContainer: Colors.grey.shade200,
    inversePrimary: Colors.grey.shade300,
    
    // Secondary colors
    secondary: Colors.grey.shade700,
    onSecondary: Colors.grey.shade100,
    secondaryContainer: Colors.grey.shade600,
    onSecondaryContainer: Colors.grey.shade200,
    
    // Tertiary colors
    tertiary: Colors.grey.shade600,
    onTertiary: Colors.grey.shade100,
    tertiaryContainer: Colors.grey.shade500,
    onTertiaryContainer: Colors.grey.shade200,
    
    // Borders and outlines
    outline: Colors.grey.shade600,
    outlineVariant: Colors.grey.shade700,
    
    // Error colors
    error: Colors.red.shade300,
    onError: Colors.grey.shade900,
    errorContainer: Colors.red.shade900,
    onErrorContainer: Colors.red.shade100,
  )
);
