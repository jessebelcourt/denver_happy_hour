import 'package:denver_happy_hour/ui/models/menu_model.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class DateTimePicker extends StatelessWidget {

  MenuModel menu;
  Function updateStartTime;

  DateTimePicker(this.menu, this.updateStartTime);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(color: Colors.greenAccent),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    _buildStartEndButtons(context),
                    _buildTimeRange(starts: this.menu.startTime),
                  ],
                ),
              )),
          // Container(
          //   decoration: BoxDecoration(color: Colors.greenAccent),
          //   child: Padding(
          //     padding: const EdgeInsets.all(3.0),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       children: <Widget>[
          //         RaisedButton(
          //           color: Colors.white,
          //           child: Text(
          //             'Ends: ',
          //           ),
          //           onPressed: () {
          //             DatePicker.showTimePicker(context,
          //                 theme: DatePickerTheme(containerHeight: 200.0),
          //                 showTitleActions: true, onConfirm: (time) {
          //               print('confirm $time');
          //               timeTwo = '${time.hour} : ${time.minute}';
          //               setState(() {});
          //             }, currentTime: DateTime.now(), locale: LocaleType.en);
          //           },
          //         ),
          //         Container(
          //           padding: EdgeInsets.all(15.0),
          //           child: Text(
          //             '$timeTwo',
          //             style: TextStyle(fontWeight: FontWeight.w500),
          //           ), //defaultTime = timeTwo
          //         ),
          //       ],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }

  RaisedButton _buildStartEndButtons(BuildContext context) {
    return RaisedButton(
        color: Colors.white,
        child: Text(
          'Starts: ',
        ),
        onPressed: () {
          DatePicker.showTimePicker(context,
              theme: DatePickerTheme(containerHeight: 200.0),
              showTitleActions: true, onConfirm: (time) {
            print('confirm $time');
            this.updateStartTime('${time.hour} : ${time.minute}');
          }, currentTime: DateTime.now(), locale: LocaleType.en);
        });
  }

  Container _buildTimeRange({String starts}) {
    if (starts == null || starts.isEmpty) {
      starts = '';
    }

    return Container(
      padding: EdgeInsets.all(15.0),
      child: Text(
        starts,
        style: TextStyle(fontWeight: FontWeight.w500),
      ), //defaultTime = timeOne
    );
  }
}

//Issues: 1.) Need to format time in Time Picker.
//        2.) Encapsulate function, pass timeOne, timeTwo into respective arguments.
//        3.) Style accordingly
