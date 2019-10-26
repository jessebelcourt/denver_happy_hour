import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class DateTimePicker extends StatefulWidget {
  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  String _timeOne = 'Not Set';
  String _timeTwo = 'Not Set';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.red)),
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('From:'),
                onPressed: () {
                  DatePicker.showTimePicker(context,
                      theme: DatePickerTheme(containerHeight: 210.0),
                      showTitleActions: true, onConfirm: (time) {
                    print('confirm $time');
                    _timeOne = '${time.hour} : ${time.minute}';
                    setState(() {});
                  }, currentTime: DateTime.now(), locale: LocaleType.en);
                },
              ),
              Container(
                child: Text('$_timeOne'),
              ),
            ],
          )),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('To:'),
                  onPressed: () {
                    DatePicker.showTimePicker(context,
                        theme: DatePickerTheme(containerHeight: 210.0),
                        showTitleActions: true, onConfirm: (time) {
                      print('confirm $time');
                      _timeTwo = '${time.hour} : ${time.minute}';
                      setState(() {});
                    }, currentTime: DateTime.now(), locale: LocaleType.en);
                  },
                ),
                Container(
                  child: Text('$_timeTwo'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
