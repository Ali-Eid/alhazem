import 'package:alhazem/core/constants/color_manager.dart';
import 'package:alhazem/core/constants/values_manager.dart';
import 'package:flutter/material.dart';

class FontConstants {
  static const String fontFamily = "";
}

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    scaffoldBackgroundColor: ColorManager.background,
    // primaryColor: ColorManager.primary,
    colorSchemeSeed: ColorManager.primary,
    appBarTheme: AppBarTheme(
        backgroundColor: ColorManager.background,
        surfaceTintColor: Colors.transparent),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.pressed)) {
              return ColorManager.primaryDark;
            } else if (states.contains(WidgetState.disabled)) {
              return ColorManager.smokeyGrey;
            }
            return ColorManager.primary; // Default color
          },
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            // if (states.contains(WidgetState.pressed)) {
            //   return ColorManager.primaryLight;
            // }
            return ColorManager.white;
          },
        ),
        shape: WidgetStateProperty.resolveWith<RoundedRectangleBorder>(
          (Set<WidgetState> states) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizeR.s7),
            );
          },
        ),
        elevation: WidgetStateProperty.resolveWith<double>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.pressed)) {
              return 12.0;
            }
            return 8.0; // Default elevation
          },
        ),
        padding: WidgetStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
              vertical: AppSizeH.s14, horizontal: AppSizeW.s20),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide:
            BorderSide(color: ColorManager.primaryDark), // Example border style
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: ColorManager.error,
            width: AppSizeW.s2), // Example border style
      ),

      contentPadding:
          EdgeInsets.symmetric(vertical: AppSizeH.s6, horizontal: AppSizeW.s10),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: ColorManager.primary,
            width: AppSizeW.s2), // Example focused border
      ),
      errorStyle: TextStyle(
          color: ColorManager.error,
          fontSize: AppSizeSp.s11,
          fontWeight: FontWeight.w500),

      hintStyle:
          TextStyle(color: ColorManager.shipGrey, fontSize: AppSizeSp.s12),
      labelStyle: TextStyle(
          color: ColorManager.smokeyGrey,
          fontWeight: FontWeight.w500,
          fontSize: AppSizeSp.s14), // Example label style
    ),
    textTheme: TextTheme(
        titleSmall: TextStyle(
          fontSize: AppSizeSp.s12,
          fontWeight: FontWeight.w400,
          color: ColorManager.primary,
        ),
        titleMedium: TextStyle(
          fontSize: AppSizeSp.s16,
          fontWeight: FontWeight.w600,
          color: ColorManager.primary,
        ),
        titleLarge: TextStyle(
          fontSize: AppSizeSp.s24,
          fontWeight: FontWeight.bold,
          color: ColorManager.primary,
        ),
        bodyLarge: TextStyle(
          fontSize: AppSizeSp.s18,
          fontWeight: FontWeight.bold,
          color: ColorManager.black,
        ),
        bodyMedium: TextStyle(
          fontSize: AppSizeSp.s16,
          fontWeight: FontWeight.normal,
          color: ColorManager.shipGrey,
        ),
        bodySmall: TextStyle(
          fontSize: AppSizeSp.s14,
          fontWeight: FontWeight.w300,
          color: ColorManager.smokeyGrey,
        ),
        labelMedium: TextStyle(
          fontSize: AppSizeSp.s14,
          fontWeight: FontWeight.w500,
          color: ColorManager.black,
        ),
        labelSmall: TextStyle(
          fontSize: AppSizeSp.s14,
          fontWeight: FontWeight.w700,
          color: ColorManager.black,
        ),
        displaySmall: TextStyle(
          fontSize: AppSizeSp.s14,
          fontWeight: FontWeight.w700,
          color: ColorManager.primary,
        ),
        headlineSmall: TextStyle(
          fontSize: AppSizeSp.s12,
          fontWeight: FontWeight.w500,
          color: ColorManager.primaryDark,
        ),
        headlineMedium: TextStyle(
          fontSize: AppSizeSp.s12,
          fontWeight: FontWeight.w500,
          color: ColorManager.shipGrey,
        ),
        headlineLarge: TextStyle(
          fontSize: AppSizeSp.s14,
          fontWeight: FontWeight.w500,
          color: ColorManager.smokeyGrey,
        ),
        displayMedium: TextStyle(
          fontSize: AppSizeSp.s14,
          fontWeight: FontWeight.w500,
          color: ColorManager.white,
        )),
    datePickerTheme: DatePickerThemeData(
      backgroundColor: ColorManager.background,
      headerBackgroundColor: ColorManager.primary,
      headerForegroundColor: ColorManager.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizeR.s12)),
    ),
  );
}

ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
  );
}

enum ThemeDataType { light, dark }

extension ThemeDataValueExtension on ThemeData {
  String getValue() {
    if (isDarkTheme) {
      return ThemeDataType.dark.toString();
    } else {
      return ThemeDataType.light.toString();
    }
  }
}

extension ThemeDataTypeExtension on ThemeData {
  bool get isDarkTheme {
    return brightness == Brightness.dark;
  }
}
