import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

ThemeData themeLight(BuildContext context) {
  return ThemeData(
    buttonColor: ColorLight.primary,
    brightness: Brightness.light,
    backgroundColor: ColorLight.background,
    cardColor: ColorLight.card,
    disabledColor: ColorLight.disabledButton,
    errorColor: ColorLight.error,
    hintColor: ColorLight.fontSubtitle,
    indicatorColor: ColorLight.primary,
    primaryIconTheme: IconThemeData(
      color: ColorLight.fontTitle,
    ),
    primaryColor: ColorLight.primary,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: ColorLight.primary,
    ),
    scaffoldBackgroundColor: ColorLight.background,
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
    ),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      headline1: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
      ),
      headline2: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
      ),
      headline3: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
      ),
      headline4: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
      ),
      headline5: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 12.0,
        fontWeight: FontWeight.w500,
      ),
      bodyText1: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
      ),
      bodyText2: GoogleFonts.poppins(
        color: ColorLight.fontTitle,
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
      ),
      subtitle1: GoogleFonts.poppins(
        color: ColorLight.fontSubtitle,
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
      ),
      subtitle2: GoogleFonts.poppins(
        color: ColorLight.fontSubtitle,
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
      ),
      button: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}

ThemeData themeDark(BuildContext context) {
  return ThemeData(
    buttonColor: ColorDark.primary,
    brightness: Brightness.dark,
    backgroundColor: ColorDark.background,
    cardColor: ColorDark.card,
    disabledColor: ColorDark.disabledButton,
    errorColor: ColorDark.error,
    hintColor: ColorDark.fontSubtitle,
    indicatorColor: ColorDark.primary,
    primaryIconTheme: IconThemeData(
      color: ColorDark.fontTitle,
    ),
    primaryColor: ColorDark.primary,
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: ColorDark.primary,
    ),
    scaffoldBackgroundColor: ColorDark.background,
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
    ),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      headline1: GoogleFonts.poppins(
        color: ColorDark.fontTitle,
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
      ),
      headline2: GoogleFonts.poppins(
        color: ColorDark.fontTitle,
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
      ),
      headline3: GoogleFonts.poppins(
        color: ColorDark.fontTitle,
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
      ),
      headline4: GoogleFonts.poppins(
        color: ColorDark.fontTitle,
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
      ),
      headline5: GoogleFonts.poppins(
        color: ColorDark.fontTitle,
        fontSize: 12.0,
        fontWeight: FontWeight.w500,
      ),
      bodyText1: GoogleFonts.poppins(
        color: ColorDark.fontTitle,
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
      ),
      bodyText2: GoogleFonts.poppins(
        color: ColorDark.fontTitle,
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
      ),
      subtitle1: GoogleFonts.poppins(
        color: ColorDark.fontSubtitle,
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
      ),
      subtitle2: GoogleFonts.poppins(
        color: ColorDark.fontSubtitle,
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
      ),
      button: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
      ),
    ),
  );
}
