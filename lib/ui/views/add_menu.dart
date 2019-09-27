import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
                decoration: InputDecoration(
                  labelText: 'Enter Restaurant Name'
                ),
                // color: Colors.blue,
                // textColor: Colors.white,
                // child: Text('Restaurant Name Input Field'),              
              ),
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('Happy Hour Hours'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),             
              RaisedButton( //Maybe use a Carosel for days of week here?            
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('Days of week Happy Hour Available'),
                onPressed: () {
                  //Navigate to upload photo
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
