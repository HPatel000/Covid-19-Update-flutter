import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  Future getData(url) async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }

  Future getNationData() {
    return getData(
        'https://api.rootnet.in/covid19-in/unofficial/covid19india.org/statewise');
  }

  Future getDistrictData() {
    return getData('https://api.covid19india.org/v2/state_district_wise.json');
  }
}
