import 'package:flutter/material.dart';
import 'reusable_card.dart';

class DataCards extends StatelessWidget {
  const DataCards({
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
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              ReusableCard(
                title: 'Confirmed Cases',
                data: confirmed ?? '0',
                colour: Colors.blue,
              ),
              ReusableCard(
                title: 'Active Cases',
                data: active ?? '0',
                colour: Colors.yellow,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              ReusableCard(
                title: 'Recovered',
                data: recovered ?? '0',
                colour: Colors.green,
              ),
              ReusableCard(
                title: 'Deaths',
                data: deaths ?? '0',
                colour: Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
