import 'package:covid19updates/screens/credits_screen.dart';
import 'package:covid19updates/widgets/awareness_page_link.dart';
import 'package:covid19updates/widgets/curved_top.dart';
import 'package:covid19updates/widgets/data_cards.dart';
import 'package:covid19updates/widgets/global_page_link.dart';
import 'package:flutter/material.dart';
import 'package:covid19updates/widgets/top_title.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:covid19updates/data/app_start.dart';
import 'package:covid19updates/widgets/state_stream.dart';
import 'package:covid19updates/data/data_search.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppStart _appStart = Provider.of<AppStart>(context);
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          elevation: 0.0,
          floating: true,
          expandedHeight: 100,
          leading: IconButton(
            padding: EdgeInsets.only(right: 15.0),
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () {
              showSearch(
                context: context,
                delegate: DataSearch(
                  statewise: _appStart.statewise,
                  districtData: _appStart.districtData,
                ),
              );
            },
          ),
          title: Text('Covid-19 Updates',
              style: TextStyle(fontSize: 20, color: Colors.white)),
          flexibleSpace: FlexibleSpaceBar(
            background: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TopTitle(
                  title: 'India',
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.staylinked,
                      color: Color(0xffffffff), size: 25.0),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreditsScreen()));
                  },
                ),
              ],
            ),
          ),
        ),
        CurvedTop(),
        AwarenessPageLink(),
        GlobalPageLink(),
        SliverToBoxAdapter(
          child: DataCards(
            confirmed: _appStart.confirmed,
            active: _appStart.active,
            recovered: _appStart.recovered,
            deaths: _appStart.deaths,
          ),
        ),
        StateStream(),
      ],
    );
  }
}
