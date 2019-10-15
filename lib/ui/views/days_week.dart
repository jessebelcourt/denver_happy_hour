import 'package:flutter/material.dart';

import './selectable_widget_model.dart';

class DaysOfWeek extends StatefulWidget {
  final SelectableWidgetViewModel
      viewModel; //Initialize selectable widget state.

  DaysOfWeek({this.viewModel});

  _DaysOfWeekState createState() => _DaysOfWeekState();
}

class _DaysOfWeekState extends State<DaysOfWeek> {

  @override
  void initState() {
    super.initState();
  }
  
  final List<String> days = [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
    'Sun',
  ]; //How could we instead Map this array into the ListView widget rather than hardcode??

  int _selectedIndex = 0;

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
          _buildExpandedDaySelector(days[0]),
          _buildExpandedDaySelector(days[1]),
          _buildExpandedDaySelector(days[2]),
          _buildExpandedDaySelector(days[3]),
          _buildExpandedDaySelector(days[4]),
          _buildExpandedDaySelector(days[5]),
          _buildExpandedDaySelector(days[6]),
        ],
      ),
    );
  }

  Expanded _buildExpandedDaySelector(String day) {
    //Create conditional statement. If (widget.viewModel.isSelect = false return one Container else another.)
    if (widget.viewModel.isSelected) {
      Expanded(
        child: Container(
          child: Text(widget.viewModel.day),
          color: Colors.blue,
          alignment: Alignment.center,
        ),
      );
    } else {
      return Expanded(
        child: Container(
          child: Text(widget.viewModel.day),
          color: Colors.grey, //If boolean false return grey, else blue.
          alignment: Alignment.center,
        ),
      );
    }
     InkWell(
      //Inkwell needs to be encapsulated
      onTap: () {
        //Trigger boolean upon user interaction.
        widget.viewModel.isSelected = !widget.viewModel.isSelected;
      },
    );
  }
}

//Next challenge: Figure out how to keep individual state for each index value in days list.
