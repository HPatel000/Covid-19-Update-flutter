import 'package:covid19updates/screens/credits_screen.dart';
import 'package:covid19updates/screens/prevention_screen.dart';
import 'package:covid19updates/widgets/curved_top.dart';
import 'package:covid19updates/widgets/data_cards.dart';
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
            icon: FaIcon(FontAwesomeIcons.staylinked,
                color: Color(0xffffffff), size: 25.0),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CreditsScreen()));
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
              ],
            ),
          ),
        ),
        CurvedTop(),
        SliverToBoxAdapter(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PreventionPage()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xff162447),
//                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                image: DecorationImage(
                  image: AssetImage('images/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Spread Awareness',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                  Hero(
                    tag: 'heartbeat',
                    child: FaIcon(
                      FontAwesomeIcons.heartbeat,
                      color: Color(0xffe43f5a),
                      size: 30.0,
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.white,
                    size: 40.0,
                  ),
                ],
              ),
            ),
          ),
        ),
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
