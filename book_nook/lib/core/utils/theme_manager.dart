import 'package:book_nook/core/utils/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appDarkTheme = ThemeData.dark().copyWith(
  // Scaffold
  scaffoldBackgroundColor: ColorManager.primary,

  // Text theme
  textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
);
