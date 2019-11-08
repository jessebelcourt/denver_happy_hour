import 'package:flutter/material.dart';

import '../models/menu_model.dart';
import './days_week_view.dart';
import './hours_widget.dart';


class AddMenuView extends StatefulWidget {
  AddMenuView({Key key}) : super(key: key);

  _AddMenuViewState createState() => _AddMenuViewState();
}

class _AddMenuViewState extends State<AddMenuView> {
  MenuModel menu;

  @override
  void initState() {
    super.initState();
    setState(() {
      menu = new MenuModel();
    });
  }

  void updateStartTime(String start) {
    setState(() {
      this.menu.startTime = start;
    });
  }
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Info'),
      ),
      body: Container(
        child: (Column(children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Enter Restaurant Name'),
          ),
          DaysWeekView(),
          DateTimePicker(menu, updateStartTime),
          RaisedButton(
            color: Colors.greenAccent,
            textColor: Colors.white,
            child: Text('Add Menu Photo'),
            onPressed: () {
              //Navigate to upload photo
            },
          ),
        ])),
      ),
    );
  }
}