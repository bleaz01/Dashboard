import 'package:asdapp/widgets/ui/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
   
    return Scaffold(
      appBar: AppBar(
      
        title: Text(widget.title),
      ),
      drawer: MyDrawer(),
      body: Container(
          child: Row(
        children: [
          // partie dasboard
          Container(
            height: size.height,
            width: size.width / 4,
            color: Colors.red,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  title: Text('Item 1'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                  },
                ),
                ListTile(
                  title: Text('Item 2'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                  },
                ),
              ],
            ),
          ),
          Container(
            height: size.height,
            width: size.width / 2,
            color: Colors.black,
            child: Text('parti2'),
          ),
        ],
      )),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}