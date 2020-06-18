import 'package:covid19updates/data/global_info.dart';
import 'package:covid19updates/screens/global_screen.dart';
import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:provider/provider.dart';
import '../screens/show_msg.dart';

class GlobalPage extends StatefulWidget {
  @override
  _GlobalPageState createState() => _GlobalPageState();
}

class _GlobalPageState extends State<GlobalPage> {
  Future _start;
  bool isConnected;
  GlobalInfo _info = GlobalInfo();
  _getData() async {
    return await _info.getGlobalInfo();
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
    return Provider(
      create: (context) => _info,
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
                return isConnected ? GlobalScreen() : ShowConnectionError();
              case ConnectionState.none:
              default:
                return ShowError();
            }
          },
        ),
      ),
    );
  }
}
