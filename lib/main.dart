import 'package:flutter/material.dart';
import 'package:shopping/routes/routes.dart';
import 'package:shopping/screens/login_page.dart';
import 'screens/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
      ),
      theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: GoogleFonts.gabriela().fontFamily,
          primaryTextTheme: GoogleFonts.akatabTextTheme()),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        MyRoutes.HomeRoute: (BuildContext context) => HomePage(),
        MyRoutes.LoginRoute: (context) => LoginPageState()
      },
    );
  }
}
