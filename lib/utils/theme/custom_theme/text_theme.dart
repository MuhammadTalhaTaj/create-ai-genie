import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.lora(
      textStyle: TextStyle(
        color: Color(0xffB219F0),
        fontFamily: 'Lora',
        fontWeight: FontWeight.w600,
        fontSize: 25.0,
        height: 2.0, // Corresponds to line height of 50px (50px / 25px)
      ),
    ),
    displayMedium: GoogleFonts.poppins(
      textStyle: TextStyle(

        fontWeight: FontWeight.w600,
        fontSize: 25,
        height: 1.5,
        // 37.5px line height for 25px font size
        color: Colors.black,
        // You can change the color to your preference
      ),
    ),
    displaySmall: GoogleFonts.poppins(
      textStyle: TextStyle(

          fontWeight: FontWeight.w500,
          fontSize: 16,
          // height: 1.5,
          color: Color(0xffB219F0)
          // 24px line height for 16px font size
          ),
    ),
  );
}
