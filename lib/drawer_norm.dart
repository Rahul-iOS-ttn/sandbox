import 'package:flutter/material.dart';
import 'package:package_test_app/drawer.dart';

class NormDrawer extends StatelessWidget {
  const NormDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      drawer: appDrawer(context),
      body: CustomDrawer(),
    );
  }
}


class CustomDrawer extends StatefulWidget {
  const CustomDrawer({ Key? key }) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.abc),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        title: const Text('Test App bar'),
      ),
    );
  }
}