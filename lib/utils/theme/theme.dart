import 'package:flutter/material.dart';
import 'package:j_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:j_store/utils/theme/custom_themes/botton_sheet_theme.dart';
import 'package:j_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:j_store/utils/theme/custom_themes/chip_theme.dart';
import 'package:j_store/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:j_store/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:j_store/utils/theme/custom_themes/text_field_theme.dart';
import 'package:j_store/utils/theme/custom_themes/text_themes.dart';

class JAppTheme {
  JAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: JAppBarTheme.lightAppBarTheme,
      textTheme: JTextTheme.lightTextTheme,
      elevatedButtonTheme: JElevatedButtonTheme.lightElevatedButtonTheme,
      chipTheme: JChipTheme.lightChipTheme,
      checkboxTheme: JCheckboxTheme.lightCheckboxTheme,
      bottomSheetTheme: JBottomSheetTheme.lightButtonSheetTheme,
      outlinedButtonTheme: JOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: JTextFieldTheme.lightInputDecorationTheme

  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
      appBarTheme: JAppBarTheme.darkAppBarTheme,
      textTheme: JTextTheme.darkTextTheme,
      elevatedButtonTheme: JElevatedButtonTheme.darkElevatedButtonTheme,
      chipTheme: JChipTheme.darkChipTheme,
      checkboxTheme: JCheckboxTheme.darkCheckboxTheme,
      bottomSheetTheme: JBottomSheetTheme.darkButtonSheetTheme,
      outlinedButtonTheme: JOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: JTextFieldTheme.darkInputDecorationTheme
  );

}