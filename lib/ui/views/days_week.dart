import 'package:denver_happy_hour/models/selected_days_model.dart';
import 'package:flutter/material.dart';

import './selectable_widget_model.dart';

class SelectableWidget extends StatefulWidget {
  final SelectedDaysModel selectedDays; //Initialize selectable widget state.

  SelectableWidget(this.selectedDays);

  _SelectableWidgetState createState() => _SelectableWidgetState();
}

class _SelectableWidgetState extends State<SelectableWidget> {
  @override
  void initState() {
    super.initState();
  }

  // bool isSelected = false; //initialize boolean
  // void _isSelected() {
  //   //Write function to change boolean to true and change state of boolean.
  //   setState(() {
  //     isSelected = !isSelected;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      color: Colors.grey,
      height: 40.0,
      child: Row(
        children: <Widget>[
          _buildExpandedDaySelector('Mon'),
          _buildExpandedDaySelector('Tue'),
          _buildExpandedDaySelector('Wed'),
          _buildExpandedDaySelector('Thu'),
          _buildExpandedDaySelector('Fri'),
          _buildExpandedDaySelector('Sat'),
          _buildExpandedDaySelector('Sun'),
        ],
      ),
    );
  }

  Expanded _buildExpandedDaySelector(String day) {
    Color backgroundColor = Colors.grey;

    if (day == 'Mon' && widget.selectedDays.monday) {
      backgroundColor = Colors.blue;
    } else if (day == 'Tue' && widget.selectedDays.tuesday) {
      backgroundColor = Colors.blue;
    }

    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (day == 'Mon') {
              widget.selectedDays.monday = !widget.selectedDays.monday;
            }
            if (day == 'Tue') {
              widget.selectedDays.tuesday = !widget.selectedDays.tuesday;
            }
          });
        },
        child: Container(
          child: Text(day),
          color: backgroundColor,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}

//Next challenge: Figure out how to keep individual state for each index value in days list.
