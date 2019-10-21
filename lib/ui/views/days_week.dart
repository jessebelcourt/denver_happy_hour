import 'package:flutter/material.dart';

import './selectable_widget_model.dart';

class SelectableWidget extends StatefulWidget {
  final SelectableWidgetViewModel
      viewModel; //Initialize selectable widget state.

  SelectableWidget(this.viewModel);

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
    return Expanded(
      child: InkWell(
        //Inkwell needs to be encapsulated
        onTap: () {
          setState(() {
            widget.viewModel.isSelected = !widget.viewModel.isSelected;
          }); //Trigger boolean upon user interaction.
        },
      ),
    );
  }
}

//Next challenge: Figure out how to keep individual state for each index value in days list.
