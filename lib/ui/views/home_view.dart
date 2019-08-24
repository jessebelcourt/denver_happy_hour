import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView();

  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Denver Happy Hour'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Text('more to come....'),
          ],
        ),
      ),
    );
  }
}
