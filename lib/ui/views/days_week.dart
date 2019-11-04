import 'package:denver_happy_hour/ui/models/menu_model.dart';
import 'package:flutter/material.dart';

class SelectableWidget extends StatefulWidget {
  MenuModel menu; //Initialize selectable widget state.

  SelectableWidget(this.menu);

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

    if (day == 'Sun' && widget.menu.monday) {
      backgroundColor = Colors.greenAccent;
    } else if (day == 'Mon' && widget.menu.tuesday) {
      backgroundColor = Colors.greenAccent;
    } else if (day == 'Tue' && widget.menu.wednesday) {
      backgroundColor = Colors.greenAccent;
    } else if (day == 'Wed' && widget.menu.thursday) {
      backgroundColor = Colors.greenAccent;
    } else if (day == 'Thu' && widget.menu.friday) {
      backgroundColor = Colors.greenAccent;
    } else if (day == 'Fri' && widget.menu.saturday) {
      backgroundColor = Colors.greenAccent;
    } else if (day == 'Sat' && widget.menu.sunday) {
      backgroundColor = Colors.greenAccent;
    }

    return Expanded(
      child: GestureDetector(
        onTap: () {
          // this.updateDaysOfWeek();
          // setState(() {
          //   if (day == 'Sun') {
          //     widget.menu.monday = !widget.menu.monday;
          //   } else if (day == 'Mon') {
          //     widget.menu.tuesday = !widget.menu.tuesday;
          //   } else if (day == 'Tue') {
          //     widget.menu.wednesday = !widget.menu.wednesday;
          //   } else if (day == 'Wed') {
          //     widget.menu.thursday = !widget.menu.thursday;
          //   } else if (day == 'Thu') {
          //     widget.menu.friday = !widget.menu.friday;
          //   } else if (day == 'Fri') {
          //     widget.menu.saturday = !widget.menu.saturday;
          //   } else if (day == 'Sat') {
          //     widget.menu.sunday = !widget.menu.sunday;
          //   }
          // });
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
