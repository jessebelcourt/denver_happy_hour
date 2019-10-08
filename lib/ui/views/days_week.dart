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

  bool isSelected = false;
  Color _notSelected = Colors.grey;
  Color _selectedDay = Colors.red;

  _isSelected() {
    setState(() {
      if(isSelected) {
        print('Is selected!');
      } else {
        print('Is Unselected!');
      }
       isSelected = !isSelected;
    });
  }

  void _highlightDay() {
    setState(() {
      _selectedDay = Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
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
      child: new InkWell(
        onTap: () {
          _isSelected();
        },
        child: new Container(
          child: new Text(day),
          color: !isSelected ? _notSelected : _selectedDay,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
