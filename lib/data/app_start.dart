import 'package:covid19updates/services/networking.dart';
import 'package:covid19updates/data/resuable_functions.dart';

class AppStart {
  List statewise;
  String confirmed;
  String recovered;
  String deaths;
  String active;
  var districtData;

  Future<Null> setData() async {
    var nationData = await NetworkHelper().getNationData();
    updateNationData(nationData);
    this.districtData = await NetworkHelper().getDistrictData();
  }

  void updateNationData(nationData) {
    statewise = nationData['statewise'];
    confirmed = ReusableFunction()
        .formatNumber(int.tryParse(statewise[0]['confirmed']));
    recovered = ReusableFunction()
        .formatNumber(int.tryParse(statewise[0]['recovered']));
    deaths =
        ReusableFunction().formatNumber(int.tryParse(statewise[0]['deaths']));
    active =
        ReusableFunction().formatNumber(int.tryParse(statewise[0]['active']));
  }
}
