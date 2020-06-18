import 'package:covid19updates/services/networking.dart';

class GlobalInfo {
  double gActive;
  double gConfirmed;
  double gDeaths;
  double gRecovered;
  List countriesData;

  Future getGlobalInfo() async {
    var data = await NetworkHelper().getGlobalData();
    updateData(data);
  }

  void updateData(data) {
    this.gConfirmed =
        double.tryParse((data['Global']['TotalConfirmed']).toString());
    gDeaths = double.tryParse((data['Global']['TotalDeaths']).toString());
    gRecovered = double.tryParse((data['Global']['TotalRecovered']).toString());
    gActive = gConfirmed - gRecovered - gDeaths;
    countriesData = data['Countries'];
  }
}
//Countries
