import 'package:flutter/material.dart';
import 'package:shopping/models/catalog.dart';

class CatalogWidget extends StatelessWidget {
  // const CatalogWidget({super.key});
  late final item;
  CatalogWidget({Key? key, required CatalogItem? this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation: 5.0,
      margin: EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        leading: Image.network(item.picture),
        title: Text(item.name),
        onTap: () {
          print("Clicked Item");
        },
        subtitle: Text(item.description),
        trailing: Text(
          '\$${item.price.toString()}',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
