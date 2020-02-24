import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        Text('Deliver features faster'),
        Text('Craft beautiful UIs'),
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain, // otherwise the logo will be tiny
            child: const FlutterLogo(),
          ),
        ),
      ],
    );
  }
}
