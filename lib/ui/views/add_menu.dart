import 'package:flutter/material.dart';

class AddMenuView extends StatefulWidget {
  AddMenuView({Key key}) : super(key: key);

  _AddMenuViewState createState() => _AddMenuViewState();
}

class _AddMenuViewState extends State<AddMenuView> {
  @override
  Widget build(BuildContext context) {
    return (Column(children: <Widget>[
      RaisedButton(
        child: Text('Return'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      RaisedButton(
        child: Text('Return'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      RaisedButton(
        child: Text('Return'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ]);
  }
}
