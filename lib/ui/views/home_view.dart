import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:denver_happy_hour/ui/components/drawer.dart';

class HomeView extends StatefulWidget {
  HomeView();

  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  GoogleMapController mapController;
  PageController pageController;
  int pageIndex = 0;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) {
        print('onMessage: $message');
      },
      onResume: (Map<String, dynamic> message) {
        print('onResume: $message');
      },
      onLaunch: (Map<String, dynamic> message) {
        print('onLaunch: $message');
      },
    );
    _firebaseMessaging.getToken().then((token) {
      print(token);
    });

    _firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(sound: true, badge: true, alert: true));

    _firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings settings) {
      print('Settings registered: $settings');
    });

    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: pageIndex,
        onTap: onTap,
        activeColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.whatshot)),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_active)),
          // BottomNavigationBarItem(
          //     icon: Icon(
          //   Icons.photo_camera,
          //   size: 35.0,
          // )),
          // BottomNavigationBarItem(icon: Icon(Icons.search)),
          // BottomNavigationBarItem(icon: Icon(Icons.account_circle)),
        ],
      ),
      appBar: AppBar(
        title: Text(
          'Denver Happy Hour',
          style: TextStyle(),
        ),
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
          iconSize: 40,
          color: Colors.white,
          icon: Icon(Icons.menu),
        ),
      ),
      drawer: CustomerDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('Floating action button....'),
        child: Icon(Icons.add),
      ),
      // body: _buildMapView(),
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: <Widget>[
          _buildMapView(),
        ],
      ),
    );
  }

  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  onTap(int pageIndex) {
    print(pageIndex);
    pageController.animateToPage(
      pageIndex,
      duration: Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  Column _buildMapView() {
    return Column(
      children: <Widget>[
        _buildMap(),
        Expanded(
          child: ListView(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.fastfood, size: 28,),
                  title: Text('Donny\'s'),
                  subtitle: Text('Drinks and food'),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.fastfood, size: 28,),
                  title: Text('Donny\'s'),
                  subtitle: Text('Drinks and food'),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.fastfood, size: 28,),
                  title: Text('Donny\'s'),
                  subtitle: Text('Drinks and food'),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.fastfood, size: 28,),
                  title: Text('Donny\'s'),
                  subtitle: Text('Drinks and food'),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.fastfood, size: 28,),
                  title: Text('Donny\'s'),
                  subtitle: Text('Drinks and food'),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.fastfood, size: 28,),
                  title: Text('Donny\'s'),
                  subtitle: Text('Drinks and food'),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.fastfood, size: 28,),
                  title: Text('Donny\'s'),
                  subtitle: Text('Drinks and food'),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container _buildMap() {
    return Container(
      height: 300,
      child: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
      ),
    );
  }
}
