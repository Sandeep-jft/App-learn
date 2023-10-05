import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:shopping/models/catalog.dart';
import 'package:shopping/widgets/catalog_grid_widget.dart';
import 'package:shopping/widgets/catalog_widget.dart';
import 'package:shopping/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List catalogItemList = [];

  @override
  void initState() {
    loadData();
    super.initState();
  }

  Future<void> loadData() async {
    String json = await rootBundle.loadString('assets/files/catalog.json');
    var jsonData = jsonDecode(json);
    setState(() {
      CatalogModel.modelItem = List.from(jsonData["items"])
          .map((e) => CatalogItem.fromMap(e))
          .toList();
    });
    // List newItems = [];
    // int itemLength = 0;
    // while (itemLength < jsonData['items'].length) {
    //   CatalogItem item = CatalogItem.fromMap(jsonData['items'][itemLength]);
    //   newItems.add(item);
    //   itemLength++;
    // }

    // setState(() {
    //   catalogItemList = newItems;
    // });
  }

  @override
  void didUpdateWidget(covariant HomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    // print(
    //     '--------------------------------->> $oldWidget -- new ---$catalogItemList');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Home page",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: GridView.builder(
          itemCount: CatalogModel.modelItem.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 10),
          itemBuilder: (context, index) =>
              CatalogGridWidget(item: CatalogModel.modelItem[index])),
      // ListView.builder(
      //     scrollDirection: Axis.vertical,
      //     itemCount: CatalogModel.modelItem.length,
      //     itemBuilder: (BuildContext context, index) {
      //       return CatalogWidget(item: CatalogModel.modelItem[index]);
      //     })
      drawer: const DrawerWidget(),
    );
  }
}
