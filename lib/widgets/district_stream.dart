import 'package:covid19updates/widgets/list_tile_data.dart';
import 'package:flutter/material.dart';
import 'package:covid19updates/data/resuable_functions.dart';

class DistrictStream extends StatelessWidget {
  DistrictStream({this.districtList});
  final districtList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (_, index) {
          final oneDistrict = districtList[index];
          return ListTileData(
            name: oneDistrict['district'].toString(),
            active: ReusableFunction().formatNumber(oneDistrict['active']),
            confirmed:
                ReusableFunction().formatNumber(oneDistrict['confirmed']),
            deaths: ReusableFunction().formatNumber(oneDistrict['deceased']),
            recovered:
                ReusableFunction().formatNumber(oneDistrict['recovered']),
          );
        },
        childCount: districtList.length,
      ),
    );
  }
}
