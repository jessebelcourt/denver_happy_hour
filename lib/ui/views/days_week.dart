import 'package:flutter/material.dart';

class DaysOfWeek extends StatefulWidget {
  DaysOfWeek({Key key}) : super(key: key);

  _DaysOfWeekState createState() => _DaysOfWeekState();
}

class _DaysOfWeekState extends State<DaysOfWeek> {

  final List<String> days = [
    'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun',
  ]; //How could we instead Map this array into the ListView widget rather than hardcode??

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      height: 40.0,
      child: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              child: Text('Mon'),
              width: 50.0,              
            ),
            Container(
              child: Text('Tue'),
              width: 50.0,
            ),
            Container(
              child: Text('Wed'),
              width: 50.0,
            ),
            Container(
              child: Text('Thu'),
              width: 50.0,
            ),
            Container(
              child: Text('Fri'),
              width: 50.0,
            ),
            Container(
              child: Text('Sat'),
              width: 50.0,
            ),
            Container(
              child: Text('Sun'),
              width: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
