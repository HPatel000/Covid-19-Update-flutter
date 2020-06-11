import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopTitle extends StatelessWidget {
  TopTitle({this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 70),
      padding: EdgeInsets.only(left: 15.0, bottom: 5.0, right: 25.0),
      color: Color(0xffe43f5a),
      child: Text(
        title,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.width * 0.10,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
      ),
    );
  }
}
