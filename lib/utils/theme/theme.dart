import 'package:flutter/material.dart';
import 'package:trove_store/utils/theme/custom_theme/appbar_theme.dart';
import 'package:trove_store/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:trove_store/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:trove_store/utils/theme/custom_theme/chip_theme.dart';
import 'package:trove_store/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:trove_store/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:trove_store/utils/theme/custom_theme/text_field_theme.dart';
import 'package:trove_store/utils/theme/custom_theme/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  /// Light mode
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    fontFamily: 'Poppins',
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
  );
}
