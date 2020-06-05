import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShowLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShowMsg(
      data: SizedBox(
        width: 80,
        height: 80,
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
      color: Color(0xffe43f5a),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
          color: Color(0xff1b1b2f),
        ),
        child: Center(
          child: Shimmer.fromColors(
            baseColor: Color(0xff1f4068),
            highlightColor: Color(0xffe43f5a),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                data,
                SizedBox(height: 10.0),
                Text(
                  msg,
                  style: TextStyle(color: Colors.white54, fontSize: 25.0),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
