import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  final imageUrl =
      'https://imgs.search.brave.com/MqwX1drkjF4UORmSQaDbUcfpeeRDfPclxyE8xwrrbg8/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/aW5kaWV3aXJlLmNv/bS93cC1jb250ZW50/L3VwbG9hZHMvMjAx/OC8xMC80NTAwNjA2/MF8xMDE1NjM2NDI4/MzAzNDA2NF82MDQx/Nzc5NDU3OTEwMzc0/NF9vLmpwZz93PTc4/MA';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.green,
        child: ListView(children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              // decoration: BoxDecoration(color: Colors.white),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green, // Set the background color here
                ),
                accountEmail: Text(
                  "Sandeep27@gmail.com",
                  style: TextStyle(color: Colors.white),
                ),
                accountName: Text(
                  "Sandeep Singh",
                  style: TextStyle(color: Colors.white),
                ),
                margin: EdgeInsets.zero,
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                  // child: Image.network(imageUrl),
                ),
              )),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.shopping_cart,
              color: Colors.white,
            ),
            title: Text(
              "Cart",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.smiley,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.settings,
              color: Colors.white,
            ),
            title: Text(
              "Settings",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          )
        ]),
      ),
      // backgroundColor: Colors.red,
      // padding: EdgeInsets.zero);
    );
  }
}
