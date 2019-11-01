import 'package:denver_happy_hour/ui/views/days_week_view.dart';
import 'package:flutter/material.dart';

import './days_week_view.dart';
import './hours_widget.dart';

class AddMenuView extends StatefulWidget {
  AddMenuView({Key key}) : super(key: key);

  _AddMenuViewState createState() => _AddMenuViewState();
}

class _AddMenuViewState extends State<AddMenuView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Info'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Enter Restaurant Name'),
            ),
            DaysWeekView(),
            DateTimePicker(),
            RaisedButton(
              color: Colors.greenAccent,
              textColor: Colors.white,
              child: Text('Add Menu Photo'),
              onPressed: () {
                //Navigate to upload photo
              },
            ),
          ],
        ),
      ),
    );
  }
}
