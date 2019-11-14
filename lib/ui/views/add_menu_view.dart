import 'package:denver_happy_hour/ui/models/menu_model.dart';
import 'package:denver_happy_hour/ui/views/days_week.dart';
import 'package:flutter/material.dart';

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
      menu = MenuModel();
    });
  }

  void updateStartTime(String start) {
    setState(() {
      this.menu.startTime = start;
      print(start);
    });
  }

  void updateEndTime(String end) {
    setState(() {
      this.menu.endTime = end;
      print(end);
    });
  }

  void updateDaysOfWeek(String day) {
    if (day == 'Sun') {
      this.menu.monday = !this.menu.monday;
    } else if (day == 'Mon') {
      this.menu.tuesday = !this.menu.tuesday;
    } else if (day == 'Tue') {
      this.menu.wednesday = !this.menu.wednesday;
    } else if (day == 'Wed') {
      this.menu.thursday = !this.menu.thursday;
    } else if (day == 'Thu') {
      this.menu.friday = !this.menu.friday;
    } else if (day == 'Fri') {
      this.menu.saturday = !this.menu.saturday;
    } else if (day == 'Sat') {
      this.menu.sunday = !this.menu.sunday;
    }
  }

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
            // DaysWeekView(),
            SelectableWidget(menu),
            DateTimePicker(menu, updateStartTime, updateEndTime),
            RaisedButton(
              color: Colors.greenAccent,
              textColor: Colors.white,
              child: Text('Add Menu Photo'),
              onPressed: () => {},
            ),
            FlatButton(
              color: Colors.red,
              child: Text('Submit'),
              onPressed: () {
                Map <String, dynamic>data = {'firstname' : 'Johnny'};
                print('menu: ${this.menu}');                
                // api.addMenu(menu)
              },
            )
          ],
        ),
      ),
    );
  }
}
