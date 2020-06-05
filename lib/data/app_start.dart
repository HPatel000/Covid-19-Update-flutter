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
    statewise = nationData['data']['statewise'];
    confirmed = ReusableFunction()
        .formatNumber(nationData['data']['total']['confirmed']);
    recovered = ReusableFunction()
        .formatNumber(nationData['data']['total']['recovered']);
    deaths =
        ReusableFunction().formatNumber(nationData['data']['total']['deaths']);
    active =
        ReusableFunction().formatNumber(nationData['data']['total']['active']);
  }
}
