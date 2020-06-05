import 'package:flutter/material.dart';
import 'package:covid19updates/widgets/data_cards.dart';
import 'package:covid19updates/widgets/top_title.dart';
import 'package:covid19updates/widgets/district_stream.dart';

class SingleStateScreen extends StatelessWidget {
  final String state;
  final String confirmed;
  final String recovered;
  final String deaths;
  final String active;
  final districtList;

  SingleStateScreen(
      {@required this.state,
      @required this.confirmed,
      @required this.recovered,
      @required this.deaths,
      @required this.active,
      @required this.districtList});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe43f5a),
      appBar: AppBar(
        backgroundColor: Color(0xffe43f5a),
        elevation: 0.0,
        title: Text(
          'Covid-19 Updates',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TopTitle(title: state),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
              color: Color(0xff1b1b2f),
            ),
            child: DataCards(
              confirmed: confirmed,
              recovered: recovered,
              deaths: deaths,
              active: active,
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xff1b1b2f),
              child: DistrictStream(districtList: districtList),
            ),
          ),
        ],
      ),
    );
  }
}
