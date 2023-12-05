import 'package:flutter/material.dart';
import 'package:instapark/utils/theme/custom_theme/appbar_theme.dart';
import 'package:instapark/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:instapark/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:instapark/utils/theme/custom_theme/chip_theme.dart';
import 'package:instapark/utils/theme/custom_theme/eleveted_button_theme.dart';
import 'package:instapark/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:instapark/utils/theme/custom_theme/text_field_theme.dart';
import 'package:instapark/utils/theme/custom_theme/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "poppins",
    brightness: Brightness.light,
    primaryColor: Colors.red,
    textTheme: CustomTextTheme.lightTextTheme,
    chipTheme: CustomChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: CustomAppBarTheme.lightAppBarTheme,
    checkboxTheme: CustomCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: CustomBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: CustomElevetedButtonTheme.lightElevetedButtonTheme,
    outlinedButtonTheme: CustomLinedButtontheme.lightOutlineButtonTheme,
    inputDecorationTheme: CustomTextFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "poppins",
    brightness: Brightness.dark,
    primaryColor: Colors.red,
    textTheme: CustomTextTheme.darkTextTheme,
    chipTheme: CustomChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: CustomAppBarTheme.darkAppBarTheme,
    checkboxTheme: CustomCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: CustomBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: CustomElevetedButtonTheme.darkElevetedButtonTheme,
    outlinedButtonTheme: CustomLinedButtontheme.darkOutlineButtonTheme,
    inputDecorationTheme: CustomTextFieldTheme.darkInputDecorationTheme,
  );
}
