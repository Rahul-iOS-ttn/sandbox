import 'package:flutter/material.dart';
import 'package:package_test_app/detail%20screens/detail_1.dart';
import 'package:package_test_app/detail%20screens/detail_2.dart';
import 'package:package_test_app/row_drawer.dart';

Drawer appDrawer(BuildContext context) {
  return Drawer(
    elevation: 0,
    child: ListView(
      children: <Widget>[
        InkWell(
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: ((context) => RowDrawer())));
          },
          child: const DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
        ),
        ListTile(
          title: const Text('Item 1'),
          onTap: () {
            // Update the state of the app.
            // ...

            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DetailOne()));
          },
        ),
        ListTile(
          title: const Text('Item 2'),
          onTap: () {
            // Update the state of the app.
            // ...

            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailTwo()));
          },
        ),
      ],
    ),
  );
}
