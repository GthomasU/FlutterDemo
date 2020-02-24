import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      constraints: BoxConstraints.expand(
        height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
      ),
      padding: const EdgeInsets.all(8.0),
      color: Colors.blue[600],
      alignment: Alignment.center,
      child: Text('Hello World',
          style: Theme.of(context)
              .textTheme
              .display1
              .copyWith(color: Colors.white)),
      transform: Matrix4.rotationZ(0.1),
    );
  }
}
