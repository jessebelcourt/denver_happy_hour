import 'package:flutter/material.dart';
import 'dart:async';

class Hours extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HoursState();
}

class _HoursState extends State<Hours> {

TimeOfDay _time = new TimeOfDay.now();

Future<void> _selectTime(BuildContext context) async {
       final TimeOfDay picked = await showTimePicker(
        context: context,
        initialTime: _time,        
      ),
    };

  @override
  Widget build(BuildContext context) {
    return null;
  }
}