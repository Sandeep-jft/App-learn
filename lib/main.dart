import 'package:flutter/material.dart';
import 'package:shopping/routes/routes.dart';
import 'package:shopping/screens/login_page.dart';
import 'package:shopping/widgets/themes.dart';
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
      darkTheme: ThemeWidget.getDarkTheme(context),
      theme: ThemeWidget.themeDataWidget(context),
      // color: Theme.of(context).primaryColor)),
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        MyRoutes.HomeRoute: (BuildContext context) => HomePage(),
        MyRoutes.LoginRoute: (context) => LoginPageState()
      },
    );
  }
}
