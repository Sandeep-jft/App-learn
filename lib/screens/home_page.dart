import 'package:flutter/material.dart';
import 'package:shopping/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            "Home page",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Text("Home page"),
      drawer: DrawerWidget(),
    );
  }
}
