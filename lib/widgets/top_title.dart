import 'package:flutter/material.dart';

class TopTitle extends StatelessWidget {
  TopTitle({this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.0, bottom: 5.0),
      color: Color(0xffe43f5a),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 35.0,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
      ),
    );
  }
}
