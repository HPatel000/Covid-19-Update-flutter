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

  List<String> stateNameList(List statewise) {
    List<String> list = [];
    for (var state in statewise) {
      list.add(state['state'].toString());
    }
    return list;
  }

  int getStateIndexFromStateWise(String stateName, List statewise) {
    for (var i = 0; i < statewise.length; i++) {
      if (statewise[i]['state'] == stateName) {
        return i;
      }
    }
    return -1;
  }
}
