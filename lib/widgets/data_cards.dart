import 'package:covid19updates/data/resuable_functions.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';

class DataCards extends StatelessWidget {
  const DataCards({
    @required this.confirmed,
    @required this.active,
    @required this.recovered,
    @required this.deaths,
  });

  final double confirmed;
  final double active;
  final double recovered;
  final double deaths;

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
                data: ReusableFunction().formatNumber(confirmed) ?? '0',
                colour: Colors.blue,
              ),
              ReusableCard(
                title: 'Active Cases',
                data: ReusableFunction().formatNumber(active) ?? '0',
                colour: Colors.yellow,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              ReusableCard(
                title: 'Recovered',
                data: ReusableFunction().formatNumber(recovered) ?? '0',
                rate: ((recovered / confirmed) * 100).toStringAsFixed(2),
                colour: Colors.green,
              ),
              ReusableCard(
                title: 'Deaths',
                data: ReusableFunction().formatNumber(deaths) ?? '0',
                rate: ((deaths / confirmed) * 100).toStringAsFixed(2),
                colour: Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
