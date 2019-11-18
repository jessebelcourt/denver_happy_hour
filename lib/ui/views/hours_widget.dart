import 'package:denver_happy_hour/ui/models/menu_model.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class DateTimePicker extends StatelessWidget {
  MenuModel menu;
  Function updateStartTime;
  Function updateEndTime;

  DateTimePicker(this.menu, this.updateStartTime, this.updateEndTime);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Text(
            'What are the hours?',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: <Widget>[
              _buildTimeRange(
                  starts: this.menu.startTime, ends: this.menu.endTime),
              _buildStartEndButtons(context),
            ],
          ),
        ),
      ],
    );
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
  }

  Container _buildStartEndButtons(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
              child: RaisedButton(
            color: Colors.black,
            onPressed: () {
              DatePicker.showTimePicker(context,
                  theme: DatePickerTheme(containerHeight: 200.0),
                  showTitleActions: true, onConfirm: (time) {
                print('confirm $time');
                this.updateStartTime('${time.hour} : ${time.minute}');
              }, currentTime: DateTime.now(), locale: LocaleType.en);
            },
            child: Text(
              'Starts',
              style: TextStyle(color: Colors.white),
            ),
          )),
          Expanded(
              child: RaisedButton(
            color: Colors.black,
            onPressed: () {
              DatePicker.showTimePicker(context,
                  theme: DatePickerTheme(containerHeight: 200.0),
                  showTitleActions: true, onConfirm: (time) {
                print('confirm $time');
                this.updateEndTime('${time.hour} : ${time.minute}');
              }, currentTime: DateTime.now(), locale: LocaleType.en);
            },
            child: Text(
              'Ends',
              style: TextStyle(color: Colors.white),
            ),
          )),
        ],
      ),

      //  Expanded(
      //   child: RaisedButton(
      //     color: Colors.greenAccent,
      //     onPressed: () {
      //       // DatePicker.showTimePicker(context,
      //       //     theme: DatePickerTheme(containerHeight: 200.0),
      //       //     showTitleActions: true, onConfirm: (time) {
      //       //   print('confirm $time');
      //       //   this.updateStartTime('${time.hour} : ${time.minute}');
      //       // }, currentTime: DateTime.now(), locale: LocaleType.en);
      //     },
      //     child: Text(
      //       'Ends',
      //       style: TextStyle(color: Colors.white),
      //     ),
      //   ),
      // )
    );
  }

  Container _buildTimeRange({String starts, String ends}) {
    if (starts == null || starts.isEmpty) {
      starts = '';
    }
    if (ends == null || ends.isEmpty) {
      ends = '';
    }

    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text(
                  'Starts',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                child: Text(
                  starts,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text(
                  'Ends',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                child: Text(
                  ends,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
