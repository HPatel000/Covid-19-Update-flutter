import 'package:covid19updates/data/app_start.dart';
import 'package:covid19updates/screens/nation_screen.dart';
import 'package:covid19updates/screens/show_msg.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:connectivity/connectivity.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future _start;
  bool isConnected;
  AppStart _appStart = AppStart();
  _getData() async {
    return await _appStart.setData();
  }

  Future<Null> checkConnection() async {
    var connection = await Connectivity().checkConnectivity();
    if (connection == ConnectivityResult.mobile ||
        connection == ConnectivityResult.wifi) {
      isConnected = true;
    } else {
      isConnected = false;
    }
  }

  @override
  void initState() {
    super.initState();
    _start = _getData();
    checkConnection();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid-19 Updates',
      theme: ThemeData(fontFamily: 'Ubuntu', primaryColor: Color(0xffe43f5a)),
      home: Provider(
        create: (context) => _appStart,
        child: Scaffold(
          backgroundColor: Color(0xff1b1b2f),
          body: FutureBuilder(
            future: _start,
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.active:
                case ConnectionState.waiting:
                  return ShowLoading();
                case ConnectionState.done:
                  return isConnected ? NationScreen() : ShowConnectionError();
                case ConnectionState.none:
                default:
                  return ShowError();
              }
            },
          ),
        ),
      ),
    );
  }
}
