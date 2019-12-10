import 'package:flutter/material.dart';

import '../models/menu_model.dart';

class SelectableWidget extends StatelessWidget {
  final MenuModel menu; //Initialize selectable widget state.
  final Function daysOfWeek;
  final color = Color(0xFFf070A1);

  SelectableWidget(this.menu, this.daysOfWeek);

  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Text(
            'When is happy hour available?',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          color: Colors.grey,
          height: 80.0,
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
        ),
      ],
    );
  }

  Expanded _buildExpandedDaySelector(String day) {
    Color backgroundColor = Colors.black;

    if (day == 'Mon' && menu.monday) {
      backgroundColor = color;
    } else if (day == 'Tue' && menu.tuesday) {
      backgroundColor = color;
    } else if (day == 'Wed' && menu.wednesday) {
      backgroundColor = color;
    } else if (day == 'Thu' && menu.thursday) {
      backgroundColor = color;
    } else if (day == 'Fri' && menu.friday) {
      backgroundColor = color;
    } else if (day == 'Sat' && menu.saturday) {
      backgroundColor = color;
    } else if (day == 'Sun' && menu.sunday) {
      backgroundColor = color;
    }

    return Expanded(
      child: GestureDetector(
        onTap: () {
          this.daysOfWeek(day);
          // setState(() {
          //   if (day == 'Mon') {
          //     widget.selectedDays.monday = !widget.selectedDays.monday;
          //   } else if (day == 'Tue') {
          //     widget.selectedDays.tuesday = !widget.selectedDays.tuesday;
          //   } else if (day == 'Wed') {
          //     widget.selectedDays.wednesday = !widget.selectedDays.wednesday;
          //   } else if (day == 'Thu') {
          //     widget.selectedDays.thursday = !widget.selectedDays.thursday;
          //   } else if (day == 'Fri') {
          //     widget.selectedDays.friday = !widget.selectedDays.friday;
          //   } else if (day == 'Sat') {
          //     widget.selectedDays.saturday = !widget.selectedDays.saturday;
          //   } else if (day == 'Sun') {
          //     widget.selectedDays.sunday = !widget.selectedDays.sunday;
          //   }
          // });
        },
        child: Container(
          child: Text(
            day,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontFamily: 'Times New Roman'),
          ),
          color: backgroundColor,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}

//Next challenge: Figure out how to keep individual state for each index value in days list.
