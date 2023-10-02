import 'package:flutter/material.dart';
import 'package:shopping/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home page")),
      body: Text("Home page"),
      drawer: DrawerWidget(),
    );
  }
}
