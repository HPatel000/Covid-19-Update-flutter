import 'package:flutter/material.dart';
import 'package:covid19updates/widgets/curved_top_data_card.dart';
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
      backgroundColor: Color(0xff1b1b2f),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0.0,
            floating: true,
            expandedHeight: MediaQuery.of(context).size.height * 0.15,
            title: Text('Covid-19 Updates',
                style: TextStyle(fontSize: 20, color: Colors.white)),
            flexibleSpace: FlexibleSpaceBar(
              background: TopTitle(title: state),
            ),
          ),
          SliverToBoxAdapter(
            child: CurvedTopDataCard(
                confirmed: confirmed,
                active: active,
                recovered: recovered,
                deaths: deaths),
          ),
          DistrictStream(districtList: districtList),
        ],
      ),
    );
  }
}
