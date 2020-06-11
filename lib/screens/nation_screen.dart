import 'package:covid19updates/widgets/curved_top_data_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          elevation: 0.0,
          floating: true,
          expandedHeight: MediaQuery.of(context).size.height * 0.15,
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
        SliverToBoxAdapter(
          child: CurvedTopDataCard(
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
