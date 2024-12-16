import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primaryColor = Color(0xFFE2BE7F);
  static const Color blackColor = Color(0xFF202020);
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    
    appBarTheme: AppBarTheme(
      centerTitle: true,
      titleTextStyle: GoogleFonts.aBeeZee(fontSize: 20, color: primaryColor),
      iconTheme: const IconThemeData(
        color: primaryColor,
      ),
    ),
    textTheme: TextTheme(
      titleSmall: GoogleFonts.elMessiri(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: primaryColor,
      ),
      titleMedium: GoogleFonts.elMessiri(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
      titleLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
      bodySmall: GoogleFonts.exo2(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: primaryColor,
      ),
      bodyMedium: GoogleFonts.exo2(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
      bodyLarge: GoogleFonts.exo2(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      selectedItemColor: Colors.white,
      unselectedItemColor: blackColor,
    ),
  );
  static ThemeData darkTheme = ThemeData();
}
