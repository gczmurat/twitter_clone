import 'package:flutter/material.dart';
import 'package:flutter_application_1/global/design/const_design.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData twitterTheme(BuildContext context) {
  return ThemeData.light().copyWith(
    scaffoldBackgroundColor: kbgColor,
    textTheme: GoogleFonts.nunitoTextTheme(ThemeData.light().textTheme).apply(
      bodyColor: kBodyColor,
      displayColor: kBodyColor,
    )
    .copyWith(
      displayLarge: GoogleFonts.nunito(
        textStyle: ThemeData.light().textTheme.displayLarge,
        fontWeight: FontWeight.w800,
        fontSize: 20,
        letterSpacing: 0.85,
        color: kPrimaryColor,
      ),
      titleMedium: GoogleFonts.nunito(
        textStyle: ThemeData.light().textTheme.titleMedium,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        height: 1.1,
        color: kBodyColor,
    ),
    ),
    iconTheme: const IconThemeData(color: kPrimaryColor)
  );
}