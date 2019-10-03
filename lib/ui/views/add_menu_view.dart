import 'package:flutter/material.dart';

class AddMenuView extends StatefulWidget {
  AddMenuView({Key key}) : super(key: key);

  _AddMenuViewState createState() => _AddMenuViewState();
}

class _AddMenuViewState extends State<AddMenuView> {


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Text('add menu'))
    );
  }
}