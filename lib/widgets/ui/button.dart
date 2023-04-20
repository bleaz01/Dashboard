import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      child: ButtonBar(
        children: <Widget>[
          TextButton(
            child: const Text('Edit',
                style: TextStyle(color: Colors.black, fontSize: 15)),
            onPressed: () {
              print('Button pressed');
            },
          ),
          TextButton(
            child: const Text('Delete', style: TextStyle(color: Colors.black)),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
