import 'package:flutter/material.dart';

import './selectable_widget_model.dart';

class DaysOfWeek extends StatefulWidget {
  DaysOfWeek({Key key}) : super(key: key);

  _DaysOfWeekState createState() => _DaysOfWeekState();
}

class _DaysOfWeekState extends State<DaysOfWeek> {
  final List<String> days = [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
    'Sun',
  ]; //How could we instead Map this array into the ListView widget rather than hardcode??

  int _selectedIndex = 0;

  bool isSelected = false;  //initialize boolean 

  void _isSelected() { //Write function to change boolean to true and change state of boolean. 
    setState(() {
      isSelected = !isSelected; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      color: Colors.grey,
      height: 40.0,
      child: Row(
        children: <Widget>[
          _buildExpandedDaySelector(days[0]),
          _buildExpandedDaySelector(days[1]),
          _buildExpandedDaySelector(days[2]),
          _buildExpandedDaySelector(days[3]),
          _buildExpandedDaySelector(days[4]),
          _buildExpandedDaySelector(days[5]),
          _buildExpandedDaySelector(days[6]),
        ],
      ),
    );
  }

  Expanded _buildExpandedDaySelector(String day) {
    return Expanded(
      child: InkWell(
        onTap: () {   //Trigger boolean upon user interaction.
          _isSelected();
        },
        child: Container(
          child: Text(day),
          color: !isSelected ? Colors.grey : Colors.blue,    //If boolean false return grey, else blue.   
          alignment: Alignment.center,
        ),
      ),
    );
  }
}

//Next challenge: Figure out how to keep individual state for each index value in days list. 
