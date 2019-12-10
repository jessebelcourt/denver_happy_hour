import 'package:flutter/material.dart';

import 'package:denver_happy_hour/ui/views/home_view.dart';
import 'package:denver_happy_hour/ui/views/add_menu_view.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final color = Color(0xFF16ffbd);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: color,
        accentColor: Colors.black,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomeView(),
        '/second': (context) => AddMenuView(),
      },
    );
  }
}