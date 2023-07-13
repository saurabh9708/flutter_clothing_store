// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.sort,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Cloth Store",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          Badge(
            padding: EdgeInsets.all(7),
            // badgeContent: Text("3"),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "CartPage");
              },
              child: Icon(
                Icons.shopping_bag,
                size: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
