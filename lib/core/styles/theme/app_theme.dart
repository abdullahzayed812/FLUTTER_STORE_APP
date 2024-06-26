import 'package:flutter/material.dart';
import 'package:flutter_store_app/core/constants/app_dimensions.dart';
import 'package:flutter_store_app/core/styles/colors/dark_colors.dart';
import 'package:flutter_store_app/core/styles/colors/light_colors.dart';
import 'package:flutter_store_app/core/styles/fonts/app_fonts.dart';
import 'package:flutter_store_app/core/styles/theme/app_colors_with_theme.dart';
import 'package:flutter_store_app/core/styles/theme/app_images_with_theme.dart';

class AppTheme {
  static ThemeData darkTheme() {
    return ThemeData(
      scaffoldBackgroundColor: DarkColors.mainColor,
      extensions: const <ThemeExtension<dynamic>>[AppColorsWithTheme.dark, AppImagesWithTheme.dark],
      useMaterial3: true,
      textTheme: TextTheme(
        displaySmall: TextStyle(
          fontSize: AppDimensions.smallTextSize,
          color: DarkColors.white,
          fontFamily: FontFamilyHelper.getFontFamily,
        ),
      ),
    );
  }

  static ThemeData lightTheme() {
    return ThemeData(
      scaffoldBackgroundColor: LightColors.mainColor,
      extensions: const <ThemeExtension<dynamic>>[AppColorsWithTheme.light, AppImagesWithTheme.light],
      useMaterial3: true,
      textTheme: TextTheme(
        displaySmall: TextStyle(
          fontSize: AppDimensions.smallTextSize,
          color: LightColors.black,
          fontFamily: FontFamilyHelper.getFontFamily,
        ),
      ),
    );
  }
}
