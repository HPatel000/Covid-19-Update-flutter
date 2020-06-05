import 'package:flutter/material.dart';

class DataCol extends StatelessWidget {
  const DataCol({@required this.data, this.title, this.colour});

  final String data;
  final String title;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 10.0,
            color: Colors.white54,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          data,
          overflow: TextOverflow.visible,
          style: TextStyle(
            fontSize: 13.0,
            color: colour,
          ),
        ),
      ],
    );
  }
}
