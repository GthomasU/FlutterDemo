import 'package:demo/StackWidget.dart';
import 'package:demo/ContainerWidget.dart';
import 'package:demo/RowWidget.dart';
import 'package:demo/TextWidget.dart';
import 'package:flutter/material.dart';

import 'ColumnWidget.dart';

class MyBottomNavigationBar extends StatefulWidget {
  MyBottomNavigationBar({Key key}) : super(key: key);

  @override
  _MyBottomNavigationBar createState() => _MyBottomNavigationBar();
}

class _MyBottomNavigationBar extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    TextWidget(),
    RowWidget(),
    ColumnWidget(),
    StackWidget(),
    ContainerWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.backup),
            title: Text('Text'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.featured_play_list),
            title: Text('Row'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_column),
            title: Text('Column'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.content_copy),
            title: Text('Stack'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.import_contacts),
            title: Text('Container'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.black38,
        onTap: _onItemTapped,
      ),
    );
  }
}
