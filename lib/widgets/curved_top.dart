import 'package:flutter/material.dart';

class CurvedTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: Color(0xffe43f5a),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff1b1b2f),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15.0),
              topLeft: Radius.circular(15.0),
            ),
          ),
          child: Text(' '),
        ),
      ),
    );
  }
}
