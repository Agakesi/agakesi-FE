import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/// App Elevated Button Theme
class AppElevatedButtonTheme {
  AppElevatedButtonTheme._(); //To avoid creating instances

  /// Light Theme - Elevation Button
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: AppColors.light,
      backgroundColor: AppColors.primary,
      disabledForegroundColor: AppColors.darkGrey,
      disabledBackgroundColor: AppColors.buttonDisabled,
      side: BorderSide(color: AppColors.primary),
      padding: const EdgeInsets.symmetric(vertical: AppSizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16,
          color: AppColors.textWhite,
          fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.buttonRadius)),
    ),
  );

  /// Dark Theme - Elevation Button
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: AppColors.light,
      backgroundColor: AppColors.primary,
      disabledForegroundColor: AppColors.darkGrey,
      disabledBackgroundColor: AppColors.darkerGrey,
      side: BorderSide(color: AppColors.primary),
      padding: const EdgeInsets.symmetric(vertical: AppSizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16,
          color: AppColors.textWhite,
          fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.buttonRadius)),
    ),
  );
}
