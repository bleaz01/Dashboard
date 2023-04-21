import 'package:flutter/material.dart';

class MySidebar extends StatefulWidget {
  const MySidebar({super.key});

  @override
  State<MySidebar> createState() => _MySidebarState();
}

class _MySidebarState extends State<MySidebar> {
  @override
  Widget build(BuildContext context) {
    final appWidth = MediaQuery.of(context).size.width;
    final appHeight = MediaQuery.of(context).size.height;
    
    return Container(
      height: appHeight,
      width: appWidth * 0.2,
      color: Colors.blue,
      child: Column(children: [
        Text("sidebar")
      ]),
    );
  }
}
