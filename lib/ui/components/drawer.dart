import 'package:flutter/material.dart';

class CustomerDrawer extends StatefulWidget {
  CustomerDrawer({Key key}) : super(key: key);

  _CustomerDrawerState createState() => _CustomerDrawerState();
}

class _CustomerDrawerState extends State<CustomerDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Text('Drawer thing'),
        ],
      ),
    );
  }
}
