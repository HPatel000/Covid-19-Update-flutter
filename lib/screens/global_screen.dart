import 'package:covid19updates/data/global_info.dart';
import 'package:covid19updates/widgets/coutries_stream.dart';
import 'package:covid19updates/widgets/curved_top.dart';
import 'package:covid19updates/widgets/data_cards.dart';
import 'package:covid19updates/widgets/top_title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GlobalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalInfo _info = Provider.of<GlobalInfo>(context);
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          elevation: 0.0,
          floating: true,
          expandedHeight: 100,
          title: Text('Covid-19 Updates',
              style: TextStyle(fontSize: 20, color: Colors.white)),
          flexibleSpace: FlexibleSpaceBar(
            background: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TopTitle(
                  title: 'Global',
                ),
              ],
            ),
          ),
        ),
        CurvedTop(),
        SliverToBoxAdapter(
          child: DataCards(
            confirmed: _info.gConfirmed,
            active: _info.gActive,
            recovered: _info.gRecovered,
            deaths: _info.gDeaths,
          ),
        ),
        CountriesStream(),
      ],
    );
  }
}
