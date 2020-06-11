import 'package:flutter/material.dart';
import 'data_cards.dart';

class CurvedTopDataCard extends StatelessWidget {
  const CurvedTopDataCard({
    @required this.confirmed,
    @required this.active,
    @required this.recovered,
    @required this.deaths,
  });

  final String confirmed;
  final String active;
  final String recovered;
  final String deaths;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffe43f5a),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff1b1b2f),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
        ),
        child: DataCards(
          confirmed: confirmed,
          active: active,
          recovered: recovered,
          deaths: deaths,
        ),
      ),
    );
  }
}
