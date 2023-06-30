import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.green,
        // primaryTextTheme: GoogleFonts.latoTextTheme(),
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: const AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(color: Colors.black)
            // titleTextStyle: TextStyle(color: Colors.white)
            ),
      );

  static ThemeData colorTheme(BuildContext) {
    return ThemeData(primarySwatch: Colors.lightGreen);
  }

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        // primarySwatch: Colors.red,
        // fontFamily: GoogleFonts.lato().fontFamily,
        // appBarTheme: AppBarTheme(
        //   color: Colors.black,
        //   elevation: 0,
        //   iconTheme: IconThemeData(color: Colors.white),
        //   titleTextStyle: TextStyle(color: Colors.white),
        // ),
      );
}
