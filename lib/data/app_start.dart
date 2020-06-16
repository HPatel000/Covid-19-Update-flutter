import 'package:covid19updates/services/networking.dart';

class AppStart {
  List statewise;
  double confirmed;
  double recovered;
  double deaths;
  double active;
  var districtData;

  Future<Null> setData() async {
    var nationData = await NetworkHelper().getNationData();
    updateNationData(nationData);
    this.districtData = await NetworkHelper().getDistrictData();
  }

  void updateNationData(nationData) {
    statewise = nationData['statewise'];
    confirmed = double.tryParse(statewise[0]['confirmed']);
    recovered = double.tryParse(statewise[0]['recovered']);
    deaths = double.tryParse(statewise[0]['deaths']);
    active = double.tryParse(statewise[0]['active']);
  }
}
