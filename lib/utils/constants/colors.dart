import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // App theme colors
  static const primary = Color(0xFF0B46FC);
  static const secondary = Color.fromRGBO(51, 51, 51, 1);
  static const accent = Color(0xFFb0c7ff);

  // Text colors
  static const textPrimary = Color(0xFF333333);
  static const textSecondary = Color(0xFF6C757D);
  static const textWhite = Colors.white;

  // Background colors
  static const light = Color(0xFFF6F6F6);
  static const dark = Color(0xFF272727);
  static const primaryBackground = Color(0xFFF3F5FF);

  // Background Container colors
  static const lightContainer = Color(0xFFF6F6F6);
  static final Color darkContainer = AppColors.white.withOpacity(0.1);

  // Button colors
  static const buttonPrimary = Color.fromRGBO(56, 28, 114, 1);
  static const buttonSecondary = Color.fromRGBO(51, 51, 51, 1);
  static const buttonDisabled = Color(0xFF4F4F4F);

  // Border colors
  static const borderPrimary = Color(0xFFD9D9D9);
  static const borderSecondary = Color(0xFFE6E6E6);

  // Error and validation colors
  static const error = Color(0xFFD32F2F);
  static const success = Color(0xFF388E3C);
  static const warning = Color(0xFFF57C00);
  static const info = Color(0xFF1976D2);

  // Neutral Shades
  static const black = Color(0xFF232323);
  static const darkerGrey = Color(0xFF4F4F4F);
  static const darkGrey = Color(0xFF9CA3AF);
  static const grey = Color(0xFFE0E0E0);
  static const softGrey = Color(0xFFF4F4F4);
  static const lightGrey = Color(0xFFF9F9F9);
  static const white = Color(0xFFFFFFFF);

  // User Profile Colors
  static const logoutBkgrd = Color(0xFFFFD4D4);
  static const logoutText = Color(0xFF5E0000);
}
