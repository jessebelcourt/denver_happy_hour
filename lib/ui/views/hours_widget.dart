import 'package:denver_happy_hour/ui/models/menu_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class DateTimePicker extends StatelessWidget {
  MenuModel menu;
  Function updateStartTime;

  DateTimePicker(this.menu, this.updateStartTime);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          _buildTimeRange(starts: this.menu.startTime, ends: this.menu.endTime),
          _buildStartEndButtons(context),
        ],
      ),
    );
  }

  Container _buildStartEndButtons(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              color: Colors.greenAccent,
              onPressed: () {
                DatePicker.showTimePicker(
                  context,
                  theme: DatePickerTheme(containerHeight: 200.0),
                  showTitleActions: true,
                  onConfirm: (time) {
                    print('confirm $time');
                    // setState(() {
                    //   widget.menu.startTime = '${time.hour}:${time.minute}';
                    // });
                    this.updateStartTime('${time.hour}:${time.minute}');
                  },
                  currentTime: DateTime.now(),
                  locale: LocaleType.en,
                );
              },
              child: Text(
                'Starts',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              color: Colors.greenAccent,
              onPressed: () {
                DatePicker.showTimePicker(
                  context,
                  theme: DatePickerTheme(containerHeight: 200.0),
                  showTitleActions: true,
                  onConfirm: (time) {
                    print('confirm $time');
                    // setState(() {
                    //   widget.menu.endTime = '${time.hour}:${time.minute}';
                    // });
                  },
                  currentTime: DateTime.now(),
                  locale: LocaleType.en,
                );
              },
              child: Text(
                'Ends',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
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
      padding: EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text('Starts'),
              ),
              Container(
                child: Text(starts),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text('Ends'),
              ),
              Container(
                child: Text(ends),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class _DateTimePickerState extends State<DateTimePicker> {}
// class DateTimePicker extends StatefulWidget {
//   MenuModel menu;

//   DateTimePicker(this.menu);

//   @override
//   _DateTimePickerState createState() => _DateTimePickerState();
// }

// class _DateTimePickerState extends State<DateTimePicker> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: <Widget>[
//           _buildTimeRange(
//               starts: widget.menu.startTime, ends: widget.menu.endTime),
//           _buildStartEndButtons(),
//         ],
//       ),
//     );
//   }

//   Container _buildStartEndButtons() {
//     return Container(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: FlatButton(
//               color: Colors.greenAccent,
//               onPressed: () {
//                 DatePicker.showTimePicker(
//                   context,
//                   theme: DatePickerTheme(containerHeight: 200.0),
//                   showTitleActions: true,
//                   onConfirm: (time) {
//                     print('confirm $time');
//                     setState(() {
//                       widget.menu.startTime = '${time.hour}:${time.minute}';
//                     });
//                   },
//                   currentTime: DateTime.now(),
//                   locale: LocaleType.en,
//                 );
//               },
//               child: Text(
//                 'Starts',
//                 style: TextStyle(
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: FlatButton(
//               color: Colors.greenAccent,
//               onPressed: () {
//                 DatePicker.showTimePicker(
//                   context,
//                   theme: DatePickerTheme(containerHeight: 200.0),
//                   showTitleActions: true,
//                   onConfirm: (time) {
//                     print('confirm $time');
//                     setState(() {
//                       widget.menu.endTime = '${time.hour}:${time.minute}';
//                     });
//                   },
//                   currentTime: DateTime.now(),
//                   locale: LocaleType.en,
//                 );
//               },
//               child: Text(
//                 'Ends',
//                 style: TextStyle(
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Container _buildTimeRange({String starts, String ends}) {
//     if (starts == null || starts.isEmpty) {
//       starts = '';
//     }

//     if (ends == null || ends.isEmpty) {
//       ends = '';
//     }

//     return Container(
//       padding: EdgeInsets.symmetric(
//         vertical: 15,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: <Widget>[
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Container(
//                 child: Text('Starts'),
//               ),
//               Container(
//                 child: Text(starts),
//               ),
//             ],
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Container(
//                 child: Text('Ends'),
//               ),
//               Container(
//                 child: Text(ends),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

//Issues: 1.) Need to format time in Time Picker.
//        2.) Encapsulate function, pass timeOne, timeTwo into respective arguments.
//        3.) Style accordingly
