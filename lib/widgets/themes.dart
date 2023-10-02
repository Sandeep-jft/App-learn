import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeWidget {
  static ThemeData themeDataWidget(BuildContext context) => ThemeData(
        primarySwatch: Colors.green,
        fontFamily: GoogleFonts.gabriela().fontFamily,
        primaryTextTheme: GoogleFonts.adventProTextTheme(),
        // textTheme: Theme.of(context).textTheme,
        appBarTheme: AppBarTheme(
            // color: Colors.black,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white),
        textTheme: TextTheme(
          // headline6: TextStyle(
          //   color: Colors.black, // Change the text color as needed
          //   fontSize: 20.0, // You can customize the font size and other styles
          // ),
          titleLarge: TextStyle(
            color: Colors.black, // Change the text color as needed
            fontSize: 20.0, // You can customize the font size and other styles
          ),
          titleMedium: TextStyle(
            color: Colors.black, // Change the text color as needed
            fontSize: 20.0, // You can customize the font size and other styles
          ),
          titleSmall: TextStyle(
            color: Colors.black, // Change the text color as needed
            fontSize: 20.0, // You can customize the font size and other styles
          ),
        ),
      );

  static ThemeData getDarkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
      );
}
