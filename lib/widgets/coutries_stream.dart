import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:covid19updates/widgets/list_tile_data.dart';
import 'package:covid19updates/data/global_info.dart';

class CountriesStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalInfo _info = Provider.of<GlobalInfo>(context);
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (_, index) {
          final oneCountry = _info.countriesData[index];
          var country = oneCountry['Country'];
          var confirmed =
              double.tryParse((oneCountry['TotalConfirmed']).toString());
          var deaths = double.tryParse((oneCountry['TotalDeaths']).toString());
          var recovered =
              double.tryParse((oneCountry['TotalRecovered']).toString());
          return ListTileData(
            name: country,
            active: confirmed - deaths - recovered,
            confirmed: confirmed,
            deaths: deaths,
            recovered: recovered,
          );
        },
        childCount: _info.countriesData.length,
      ),
    );
  }
}
