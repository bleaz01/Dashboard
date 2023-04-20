import 'package:asdapp/widgets/ui/card.dart';
import 'package:flutter/material.dart';



class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Menu", style: TextStyle(color: Colors.black),),
              accountEmail: Text("asdbxl.com",style: TextStyle(color: Colors.black)),
              currentAccountPicture: CircleAvatar(
                backgroundImage:AssetImage('images/profilOne.jpg'),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/profilOne.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
          ),
        
     MyCard(icon: Icons.home,),
     MyCard(icon: Icons.person,)
        ],
      ),
    );
  }
}
