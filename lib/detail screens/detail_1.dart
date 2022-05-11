import 'package:flutter/material.dart';

class DetailOne extends StatelessWidget {
  const DetailOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.navigate_before),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Title'),
      ),
      backgroundColor: Colors.redAccent,
      body: const Center(
          child: Text(
        'Detail Screen one',
        style: TextStyle(fontStyle: FontStyle.italic),
      )),
    );
  }
}
