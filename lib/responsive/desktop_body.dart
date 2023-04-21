import 'package:asdapp/widgets/ui/sidebar.dart';
import 'package:flutter/material.dart';

class Desktopbody extends StatelessWidget {
  const Desktopbody({super.key});

  @override
  Widget build(BuildContext context) {
    final appWidth = MediaQuery.of(context).size.width;
    final appHeight = MediaQuery.of(context).size.height;

    return Container(
        width: appWidth,
        height: appHeight,
        color: Colors.amber,
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(2),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: appHeight,
                child: MySidebar(),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              flex: 3,
              child: Container(
                height: appHeight,
                width: appWidth,
                color: Colors.red,
              ),
            ),
          ],
        ));
  }
}
