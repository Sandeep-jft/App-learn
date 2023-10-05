import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CatalogGridWidget extends StatelessWidget {
  final item;

  const CatalogGridWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: GridTile(
        header: Container(
          child: Text(item.name,
              style: TextStyle(color: Colors.white, fontSize: 16)),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(color: Colors.green),
        ),
        child: Image.network(item.picture),
        footer: Text(item.price.toString()),
        key: Key(item.id.toString()),
      ),
    );
  }
}
