import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final String title;
  final String data;
  final Color colour;
  ReusableCard({@required this.title, @required this.data, this.colour});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(6.0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Color(0xff162447),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white70,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              data,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                color: colour,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
