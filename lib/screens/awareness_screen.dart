import 'package:covid19updates/screens/tabs/immunity_boost_page.dart';
import 'package:covid19updates/screens/tabs/prevention_page.dart';
import 'package:covid19updates/screens/tabs/symptoms_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AwarenessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xff1b1b2f),
        appBar: AppBar(
          elevation: 0.0,
          title: Text('Spread Awareness'),
          actions: <Widget>[
            Hero(
              tag: 'heartbeat',
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: FaIcon(
                  FontAwesomeIcons.heartbeat,
                  color: Color(0xff1b1b2f),
                  size: 30.0,
                ),
              ),
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            indicatorWeight: 4.0,
            indicatorColor: Color(0xff1b1b2f),
            tabs: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text('Prevention'),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text('Symptoms'),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text('Boost Immunity'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            PreventionPage(),
            SymptomsPage(),
            ImmunityBoost(),
          ],
        ),
      ),
    );
  }
}
