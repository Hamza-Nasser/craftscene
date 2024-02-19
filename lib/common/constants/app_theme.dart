import 'package:craft_scene/common/constants/app_colors.dart';
import 'package:craft_scene/common/constants/app_icon_colors.dart';
import 'package:craft_scene/common/constants/text/styles_manager.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData primaryTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: false,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const ColorScheme.light().background,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
        ),
      ),
      scaffoldBackgroundColor: const ColorScheme.light().background,
      textTheme: TextTheme(
        bodyMedium: getMediumTextStyle(context, color: AppColors.primaryFont),
        bodySmall: getLightTextStyle(context, color: AppColors.secondaryFont),
        displaySmall:
            getRegularTextStyle(context, color: AppColors.primaryFont),
        headlineMedium: getBoldTextStyle(context, color: AppColors.primaryFont),
        titleMedium: getMediumTextStyle(context, color: AppColors.primaryFont),
        titleSmall: getRegularTextStyle(context, color: AppColors.primaryFont),
        titleLarge: getSemiBoldTextStyle(
          context,
          color: Colors.black.withAlpha(180),
        ),
      ),
      brightness: Brightness.light,
      primarySwatch: AppColors.color,
      primaryColor: AppColors.primaryColor,
      primaryColorDark: AppColors.primaryColorDark,
      iconTheme: Theme.of(context).iconTheme.copyWith(
            color: AppIconColors.black60,
          ),
    );
  }
}
