import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covid19updates/widgets/data_cards.dart';
import 'package:covid19updates/widgets/top_title.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:covid19updates/data/app_start.dart';
import 'package:covid19updates/widgets/state_stream.dart';
import 'package:covid19updates/data/data_search.dart';

class NationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppStart _appStart = Provider.of<AppStart>(context);
    return Container(
      color: Color(0xffe43f5a),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
              color: Color(0xff1b1b2f),
            ),
            child: DataCards(
              confirmed: _appStart.confirmed,
              active: _appStart.active,
              recovered: _appStart.recovered,
              deaths: _appStart.deaths,
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              color: Color(0xff1b1b2f),
              padding: EdgeInsets.only(top: 5.0),
              child: StateStream(),
            ),
          ),
        ],
      ),
    );
  }
}
