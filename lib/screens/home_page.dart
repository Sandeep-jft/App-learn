import 'package:flutter/material.dart';
import 'package:shopping/models/catalog.dart';
import 'package:shopping/widgets/catalog_widget.dart';
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
      body: ListView.builder(
          itemCount: CatalogModel.modelItem.length,
          itemBuilder: (BuildContext context, index) {
            return CatalogWidget(item: CatalogModel.modelItem[index]);
          }),
      drawer: DrawerWidget(),
    );
  }
}
