import 'package:denver_happy_hour/ui/models/selected_days_model.dart';
import 'package:flutter/material.dart';

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
      margin: EdgeInsets.only(top: 10.0),
      // color: Colors.grey,
      height: 40.0,
      child: Row(
        children: <Widget>[
          _buildExpandedDaySelector('Sun'),
          _buildExpandedDaySelector('Mon'),
          _buildExpandedDaySelector('Tue'),
          _buildExpandedDaySelector('Wed'),
          _buildExpandedDaySelector('Thu'),
          _buildExpandedDaySelector('Fri'),
          _buildExpandedDaySelector('Sat'),
        ],
      ),
    );
  }

  Expanded _buildExpandedDaySelector(String day) {
    Color backgroundColor = Colors.black;

    if (day == 'Sun' && widget.selectedDays.monday) {
      backgroundColor = Colors.greenAccent;
    } else if (day == 'Mon' && widget.selectedDays.tuesday) {
      backgroundColor = Colors.greenAccent;
    } else if (day == 'Tue' && widget.selectedDays.wednesday) {
      backgroundColor = Colors.greenAccent;
    } else if (day == 'Wed' && widget.selectedDays.thursday) {
      backgroundColor = Colors.greenAccent;
    } else if (day == 'Thu' && widget.selectedDays.friday) {
      backgroundColor = Colors.greenAccent;
    } else if (day == 'Fri' && widget.selectedDays.saturday) {
      backgroundColor = Colors.greenAccent;
    } else if (day == 'Sat' && widget.selectedDays.sunday) {
      backgroundColor = Colors.greenAccent;
    }

    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (day == 'Sun') {
              widget.selectedDays.monday = !widget.selectedDays.monday;
            } else if (day == 'Mon') {
              widget.selectedDays.tuesday = !widget.selectedDays.tuesday;
            } else if (day == 'Tue') {
              widget.selectedDays.wednesday = !widget.selectedDays.wednesday;
            } else if (day == 'Wed') {
              widget.selectedDays.thursday = !widget.selectedDays.thursday;
            } else if (day == 'Thu') {
              widget.selectedDays.friday = !widget.selectedDays.friday;
            } else if (day == 'Fri') {
              widget.selectedDays.saturday = !widget.selectedDays.saturday;
            } else if (day == 'Sat') {
              widget.selectedDays.sunday = !widget.selectedDays.sunday;
            }
          });
        },
        child: Container(
          child: Text(
            day,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          color: backgroundColor,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}

//Next challenge: Figure out how to keep individual state for each index value in days list.
