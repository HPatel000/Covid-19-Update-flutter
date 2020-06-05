import 'package:intl/intl.dart';

class ReusableFunction {
  List getDistrictList(String stateName, districtData) {
    for (var i = 0; i < districtData.length; i++) {
      if (districtData[i]['state'] == stateName) {
        return districtData[i]['districtData'];
      }
    }
    return null;
  }

  String formatNumber(num) {
    final NumberFormat nf = new NumberFormat("##,##,##,##,##,##,###");
    return nf.format(num).toString();
  }
}
