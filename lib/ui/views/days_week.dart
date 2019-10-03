import 'package:flutter/material.dart';

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

  Color selectedDay = Colors.red;
  Color notSelected = Colors.grey;

  Color mondayColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      height: 40.0,
      child: Row(
        children: <Widget>[
          _buildExpandedDaySelector('Mon'),
          _buildExpandedDaySelector('Tue'),
          _buildExpandedDaySelector('Wed'),
          _buildExpandedDaySelector('Thur'),
          _buildExpandedDaySelector('Fri'),
          _buildExpandedDaySelector('Sat'),
          _buildExpandedDaySelector('Sun'),
        ],
      ),
    );
  }

  Expanded _buildExpandedDaySelector(String day) {
    return Expanded(
      child: Container(
        child: Text(day),
        alignment: Alignment.center,
      ),
    );
  }
}
