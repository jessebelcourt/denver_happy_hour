import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

class DateTimePicker extends StatefulWidget {
  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  String timeOne = 'Not Set';
  String timeTwo = 'Not Set';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(color: Colors.red),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    RaisedButton(
                        color: Colors.blue,
                        child: Text(
                          'Starts: ',
                        ),
                        onPressed: () {
                          DatePicker.showTimePicker(context,
                              theme: DatePickerTheme(containerHeight: 200.0),
                              showTitleActions: true, onConfirm: (time) {
                            print('confirm $time');
                            timeOne = '${time.hour} : ${time.minute}';
                            setState(() {});
                          },
                              currentTime: DateTime.now(),
                              locale: LocaleType.en);
                        }),
                    Container(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        '$timeOne',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ), //defaultTime = timeOne
                    ),
                  ],
                ),
              )),
          Container(
            decoration: BoxDecoration(color: Colors.red),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.blue,
                    child: Text(
                      'Ends: ',              
                    ),
                    onPressed: () {
                      DatePicker.showTimePicker(context,
                          theme: DatePickerTheme(containerHeight: 200.0),
                          showTitleActions: true, onConfirm: (time) {
                        print('confirm $time');
                        timeTwo = '${time.hour} : ${time.minute}';
                        setState(() {});
                      }, currentTime: DateTime.now(), locale: LocaleType.en);
                    },
                  ),
                  Container(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      '$timeTwo',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ), //defaultTime = timeTwo
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

//Issues: 1.) Need to format time in Time Picker.
//        2.) Encapsulate function, pass timeOne, timeTwo into respective arguments.
//        3.) Style accordingly
