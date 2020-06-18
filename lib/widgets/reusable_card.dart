import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final String title;
  final String data;
  final Color colour;
  final String rate;
  ReusableCard(
      {@required this.title, @required this.data, this.colour, this.rate});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(6.0),
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
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
              height: 20.0,
            ),
            Text(
              data,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w900,
                color: colour,
              ),
            ),
            SizedBox(height: 15.0),
            rate != null
                ? Text(
                    'rate: $rate%',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white54,
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
