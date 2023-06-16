import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final IconData icon;
  final String title;

  MyCard({
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      iconColor: Colors.white,
      minimumSize: Size(88, 44),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
      backgroundColor: Colors.blue,
    );

    return Container(
      height: 80,
      child: Card(

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              leading: Icon(icon),
              title: Text(title),

            ),

          ],
        ),
        
      ),
    );
  }
}
