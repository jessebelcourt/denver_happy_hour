import 'package:flutter/material.dart';

import '../models/menu_model.dart';
import './days_week.dart';
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

  void updateEndTime(String end) {
    setState(() {
      this.menu.endTime = end;
    });
  }

  void updateDaysOfWeek(String day) {
    setState(() {
      if (day == 'Mon') {
        this.menu.monday = !this.menu.monday;
      } else if (day == 'Tue') {
        this.menu.tuesday = !this.menu.tuesday;
      } else if (day == 'Wed') {
        this.menu.wednesday = !this.menu.wednesday;
      } else if (day == 'Thu') {
        this.menu.thursday = !this.menu.thursday;
      } else if (day == 'Fri') {
        this.menu.friday = !this.menu.friday;
      } else if (day == 'Sat') {
        this.menu.saturday = !this.menu.saturday;
      } else if (day == 'Sun') {
        this.menu.sunday = !this.menu.sunday;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Info'),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white54),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: (Column(children: <Widget>[
          Container(           
            padding: EdgeInsets.only(bottom: 20.0),
            child: Text(
              'Restaurant Info',
              style: TextStyle(fontSize: 25.0),
            ),
          ),
          Text(
            'What is the name of the restaurant?',
            style: TextStyle(fontSize: 18.0),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Enter Restaurant Name'),
          ),
          Container(
            child: SelectableWidget(menu, updateDaysOfWeek),
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.orangeAccent,
                  blurRadius: 5,
                ),
              ],
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ),
            ),
          ),
          Container(
            child: DateTimePicker(menu, updateStartTime, updateEndTime),
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.orangeAccent,
                  blurRadius: 5,
                ),
              ],
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ),
            ),
          ),
          RaisedButton(
            color: Colors.black,
            textColor: Colors.white,
            child: Text('Add Menu Photo'),
            onPressed: () {
              //Navigate to upload photo
            },
          ),
          FlatButton(
            color: Colors.black,
            child: Text(
              'Submit',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Map<String, dynamic> data = {};
              print('menu: ${this.menu}');
            },
          )
        ])),
      ),
    );
  }
}
