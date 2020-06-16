import 'package:covid19updates/widgets/curved_top.dart';
import 'package:covid19updates/widgets/data_cards.dart';
import 'package:flutter/material.dart';
import 'package:covid19updates/widgets/top_title.dart';
import 'package:covid19updates/widgets/district_stream.dart';

class SingleStateScreen extends StatelessWidget {
  final String state;
  final double confirmed;
  final double recovered;
  final double deaths;
  final double active;
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
      backgroundColor: Color(0xff1b1b2f),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0.0,
            floating: true,
            expandedHeight: 100,
            title: Text('Covid-19 Updates',
                style: TextStyle(fontSize: 20, color: Colors.white)),
            flexibleSpace: FlexibleSpaceBar(
              background: TopTitle(title: state),
            ),
          ),
          CurvedTop(),
          SliverToBoxAdapter(
            child: DataCards(
              confirmed: confirmed,
              active: active,
              recovered: recovered,
              deaths: deaths,
            ),
          ),
          DistrictStream(districtList: districtList),
        ],
      ),
    );
  }
}
