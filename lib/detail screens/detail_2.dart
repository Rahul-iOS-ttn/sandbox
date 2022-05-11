import 'package:flutter/material.dart';

import '../drawer.dart';

class DetailTwo extends StatelessWidget {
  DetailTwo({Key? key}) : super(key: key);
  var _showDrawer = false;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        if (size.width > 520 || _showDrawer) appDrawer(context),
        Expanded(
          child: Scaffold(
            appBar: AppBar(
              // leading: IconButton(
              //   icon: const Icon(Icons.navigate_before),
              //   onPressed: () {
              //     Navigator.of(context).pop();
              //   },
              // ),
              title: const Text('Title'),
            ),
            drawer: appDrawer(context),
            backgroundColor: Colors.redAccent,
            body: const Center(
                child: Text(
              'Detail Screen two',
              style: TextStyle(fontStyle: FontStyle.italic),
            )),
          ),
        ),
      ],
    );
  }
}
