import 'package:flutter/material.dart';
import 'package:package_test_app/drawer.dart';
import 'package:package_test_app/drawer_norm.dart';
import 'package:package_test_app/row_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RowDrawer(),
      // home: NormDrawer(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   final GlobalKey<ScaffoldState> k = GlobalKey();

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size.width;
//     if (Scaffold.of(context).isDrawerOpen && size < 520) {
//       WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
//         Scaffold.of(context).openDrawer();
//       });
//       // Navigator.pop(context); // close drawer
//     }
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       drawer: size > 520 ? appDrawer() : null,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    print(size);
    return Scaffold(
      drawer: Drawer(),
      body: CustomNavBar(
        screenSize: size,
      ),
    );
  }
}

class CustomNavBar extends StatefulWidget {
  final double screenSize;

  const CustomNavBar({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    if (!Scaffold.of(context).isDrawerOpen && widget.screenSize > 520) {
      print("Drawer is Opened");
      WidgetsBinding.instance!.addPostFrameCallback((_) {
        Scaffold.of(context).openEndDrawer(); //No Error
        ///The error was coming, As you're trying to build a widget when it is
        ///rebuilding widget Tree due to the change in the width of the browser.
        ///Wrapping it inside ensure that the code will run after the build.
      });
      // Don't call setState((){}); Not Required;
      // as every time you change the width it rebuilds all the widget again
      // setState(() {});
    }

    return widget.screenSize < 520
        ? Container(color: Colors.red) //desktop screen
        : Center(
            //mobile screen
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          );
  }
}
