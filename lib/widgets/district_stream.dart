import 'package:covid19updates/widgets/list_tile_data.dart';
import 'package:flutter/material.dart';

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
            active: double.tryParse(oneDistrict['active'].toString()),
            confirmed: double.tryParse(oneDistrict['confirmed'].toString()),
            deaths: double.tryParse(oneDistrict['deceased'].toString()),
            recovered: double.tryParse(oneDistrict['recovered'].toString()),
          );
        },
        childCount: districtList.length,
      ),
    );
  }
}
