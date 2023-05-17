import 'package:flutter/material.dart';

import 'card.dart';

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
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Text("sidebar"),
        MyCard(title:"Liste du personnelle",icon: Icons.person,),
        MyCard(title:"En cours",icon: Icons.access_alarm_rounded,),



      ]),
    );
  }
}
