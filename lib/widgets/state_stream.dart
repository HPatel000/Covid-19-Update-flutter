import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:covid19updates/data/app_start.dart';
import 'package:covid19updates/widgets/list_tile_data.dart';
import 'package:covid19updates/data/resuable_functions.dart';
import 'package:covid19updates/screens/single_state_screen.dart';

class StateStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppStart _appStart = Provider.of<AppStart>(context);
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (_, index) {
          final oneState = _appStart.statewise[++index];
          var state = oneState['state'];
          var active =
              ReusableFunction().formatNumber(int.tryParse(oneState['active']));
          var confirmed = ReusableFunction()
              .formatNumber(int.tryParse(oneState['confirmed']));
          var deaths =
              ReusableFunction().formatNumber(int.tryParse(oneState['deaths']));
          var recovered = ReusableFunction()
              .formatNumber(int.tryParse(oneState['recovered']));
          var districtList =
              ReusableFunction().getDistrictList(state, _appStart.districtData);
          return ListTileData(
            name: state,
            active: active,
            confirmed: confirmed,
            deaths: deaths,
            recovered: recovered,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SingleStateScreen(
                      state: state,
                      confirmed: confirmed,
                      recovered: recovered,
                      deaths: deaths,
                      active: active,
                      districtList: districtList,
                    );
                  },
                ),
              );
            },
          );
        },
        childCount: _appStart.statewise.length - 1,
      ),
    );
  }
}
