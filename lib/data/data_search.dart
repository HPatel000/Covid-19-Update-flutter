import 'package:covid19updates/data/resuable_functions.dart';
import 'package:covid19updates/screens/single_state_screen.dart';
import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  final List statewise;
  final List districtData;
  DataSearch({this.statewise, this.districtData});
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  TextInputType get keyboardType => TextInputType.text;

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      primaryColor: Color(0xffe43f5a),
    );
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    int i = ReusableFunction().getStateIndexFromStateWise(query, statewise);
    if (i != -1) {
      var districtList =
          ReusableFunction().getDistrictList(query, districtData);
      return SingleStateScreen(
        state: statewise[i]['state'].toString(),
        active: statewise[i]['active'].toString(),
        confirmed: statewise[i]['confirmed'].toString(),
        deaths: statewise[i]['deaths'].toString(),
        recovered: statewise[i]['recovered'].toString(),
        districtList: districtList,
      );
    } else {
      return buildSuggestions(context);
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final dataList = ReusableFunction().stateNameList(statewise);
    final suggestionList = dataList
        .where(
            (element) => element.toLowerCase().startsWith(query.toLowerCase()))
        .toList();
    return Container(
      color: Color(0xff162447),
      child: ListView.builder(
        itemBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              onTap: () {
                int i = ReusableFunction().getStateIndexFromStateWise(
                    suggestionList[index], statewise);
                print(i);
                if (i != -1) {
                  var districtList = ReusableFunction()
                      .getDistrictList(suggestionList[index], districtData);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SingleStateScreen(
                          state: statewise[i]['state'].toString(),
                          active: statewise[i]['active'].toString(),
                          confirmed: statewise[i]['confirmed'].toString(),
                          deaths: statewise[i]['deaths'].toString(),
                          recovered: statewise[i]['recovered'].toString(),
                          districtList: districtList,
                        );
                      },
                    ),
                  );
                }
                return null;
              },
              leading: Icon(
                Icons.place,
                color: Color(0xffe43f5a),
              ),
              title: RichText(
                text: TextSpan(
                  text: suggestionList[index].substring(0, query.length),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 15.0),
                  children: [
                    TextSpan(
                      text: suggestionList[index].substring(query.length),
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1,
              height: 0.0,
              indent: 20,
              endIndent: 20,
              color: Color(0xff1f4068),
            ),
          ],
        ),
        itemCount: suggestionList.length,
      ),
    );
  }
}
