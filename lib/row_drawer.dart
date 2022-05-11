import 'package:flutter/material.dart';
import 'package:package_test_app/drawer.dart';

class RowDrawer extends StatefulWidget {
  RowDrawer({Key? key}) : super(key: key);

  @override
  State<RowDrawer> createState() => _RowDrawerState();
}

class _RowDrawerState extends State<RowDrawer> {
  var _showDrawer = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Row(
        children: [
          if (size.width > 520 || _showDrawer) appDrawer(context),
          Expanded(
            // width: size.width > 520 ? size.width - 320 : size.width,
            // height: size.height,
            child: Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  icon: const Icon(Icons.abc_rounded),
                  onPressed: () {
                    setState(() {
                      _showDrawer = true;
                      print(_showDrawer);
                    });
                  },
                ),
              ),
              // drawer: appDrawer(),
              backgroundColor: Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }
}
