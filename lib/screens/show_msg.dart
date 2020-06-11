import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShowLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShowMsg(
      data: SizedBox(
        width: 90,
        height: 90,
        child: CircularProgressIndicator(
          strokeWidth: 8.0,
          valueColor: AlwaysStoppedAnimation<Color>(Color(0xffe43f5a)),
        ),
      ),
      msg: 'Please wait...⏳',
    );
  }
}

class ShowError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShowMsg(
      data: Icon(
        Icons.network_locked,
        size: 200,
        color: Color(0xffe43f5a),
      ),
    );
  }
}

class ShowConnectionError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShowMsg(
      data: Icon(
        Icons.cloud_off,
        size: 200.0,
        color: Color(0xffe43f5a),
      ),
      msg: 'No Connection!',
    );
  }
}

class ShowMsg extends StatelessWidget {
  final data;
  final msg;
  ShowMsg({this.data, this.msg});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff1b1b2f),
      child: Center(
        child: Shimmer.fromColors(
          baseColor: Color(0xffe43f5a),
          highlightColor: Color(0xff1f4068),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              data,
              SizedBox(height: 50.0),
              Text(
                msg,
                style: TextStyle(color: Colors.white54, fontSize: 30.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
