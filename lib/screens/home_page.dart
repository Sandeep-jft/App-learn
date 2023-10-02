import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(title: const Text("Home page")),
        body: Text("Home page"),
        drawer: Drawer(),
      ),
    );
  }
}
