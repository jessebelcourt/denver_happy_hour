import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './days_week.dart';

class AddMenuView extends StatefulWidget {
  AddMenuView({Key key}) : super(key: key);

  _AddMenuViewState createState() => _AddMenuViewState();
}

class _AddMenuViewState extends State<AddMenuView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Info'),
      ),
      body: Container(
        child: (Column(children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Enter Restaurant Name'),
            // color: Colors.blue,
            // textColor: Colors.white,
            // child: Text('Restaurant Name Input Field'),
          ),
          DaysOfWeek(),
          RaisedButton( 
            color: Colors.blue,
            textColor: Colors.white,
            child: Text('Happy Hour Hours'),   //Clock Carousel Widget will go here//
            onPressed: () {
              selectTime(context);
            },
          ),
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text('Add Menu Photo'),
            onPressed: () {
              //Navigate to upload photo
            },
          ),
        ])),
      ),
    );
  }
}
