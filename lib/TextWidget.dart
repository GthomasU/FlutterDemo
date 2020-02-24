import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Text.rich(
      TextSpan(
        text: 'Hello', // default text style
        children: <TextSpan>[
          TextSpan(
              text: ' beautiful ',
              style: TextStyle(fontStyle: FontStyle.italic)),
          TextSpan(
              text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
