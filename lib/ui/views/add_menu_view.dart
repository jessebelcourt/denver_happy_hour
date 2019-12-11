import 'package:flutter/material.dart';

import '../models/menu_model.dart';
import './days_week.dart';
import './hours_widget.dart';

class AddMenuView extends StatefulWidget {
  AddMenuView({Key key}) : super(key: key);

  _AddMenuViewState createState() => _AddMenuViewState();
}

class _AddMenuViewState extends State<AddMenuView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  MenuModel menu;
  //Retrieve text from restaurantName TextField
  TextEditingController _restNameController = TextEditingController();
  bool _validate = false;
  final color = Color(0xFF16ffbd);

  @override
  void initState() {
    super.initState();
    setState(() {
      menu = new MenuModel();
    }); 
    _restNameController.addListener(_currentText);    
  }

  void _currentText() {
    print('Current text value: ${_restNameController.text}');
  }

  String _validateRestName(String value) {
    if(value.isEmpty) {
      return 'Please enter a value';
    } else {
      return null;
    }
  }

  void updateStartTime(String start) {
    setState(() {
      this.menu.startTime = start;
    });
  }

  void updateEndTime(String end) {
    setState(() {
      this.menu.endTime = end;
    });
  }

  void updateDaysOfWeek(String day) {
    setState(() {
      if (day == 'Mon') {
        this.menu.monday = !this.menu.monday;
      } else if (day == 'Tue') {
        this.menu.tuesday = !this.menu.tuesday;
      } else if (day == 'Wed') {
        this.menu.wednesday = !this.menu.wednesday;
      } else if (day == 'Thu') {
        this.menu.thursday = !this.menu.thursday;
      } else if (day == 'Fri') {
        this.menu.friday = !this.menu.friday;
      } else if (day == 'Sat') {
        this.menu.saturday = !this.menu.saturday;
      } else if (day == 'Sun') {
        this.menu.sunday = !this.menu.sunday;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Information'),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white54),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Form(
          key: _formKey,
          child: (Column(children: <Widget>[
            TextFormField(     
              controller: _restNameController,
              validator: (String value) {
                if(value.isEmpty) {
                  return 'Please enter a value';
                } else {
                  return null;
                }
              },  
              onSaved: (value) {
                setState(() {
                 //
                });
              },    
              decoration: InputDecoration(                
                labelText: 'Enter Restaurant Name',                
                prefixIcon: Icon(Icons.add_circle),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(25.0),
                  ),
                ),
              ),
              // validator: ,             
            ),
            // Container(
            //   child: SelectableWidget(menu, updateDaysOfWeek),
            //   margin: EdgeInsets.all(10.0),
            //   decoration: BoxDecoration(
            //     boxShadow: [
            //       BoxShadow(
            //         color: color,          
            //       ),
            //     ],
            //     border: Border.all(color: Colors.black),
            //     borderRadius: BorderRadius.all(
            //       Radius.circular(25.0),
            //     ),
            //   ),
            // ),
            Container(
              child: DateTimePicker(menu, updateStartTime, updateEndTime),
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: color,                   
                  ),
                ],
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.all(
                  Radius.circular(25.0),
                ),
              ),
            ),
            // RaisedButton(
            //   color: Colors.black,
            //   textColor: Colors.white,
            //   child: Text('Add Menu Photo'),
            //   onPressed: () {
            //     //Navigate to upload photo
            //   },
            // ),
            FlatButton(
              color: Colors.black,
              child: Text(
                'Submit',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Map<String, dynamic> data = {};
                print('menu: ${this.menu}');   
                if (_formKey.currentState.validate()){
                  //
                }              
              },
            )
          ])),
        ),
      ),
    );
  }
}
