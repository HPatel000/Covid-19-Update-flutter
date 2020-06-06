import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covid19updates/widgets/data_col.dart';

class ListTileData extends StatelessWidget {
  final String name;
  final String confirmed;
  final String recovered;
  final String deaths;
  final String active;
  final Function onTap;

  ListTileData({
    @required this.name,
    @required this.confirmed,
    @required this.recovered,
    @required this.deaths,
    @required this.active,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onTap();
      },
      title: Container(
        decoration: BoxDecoration(
          color: Color(0xff1f4068),
          borderRadius: BorderRadius.circular(5.0),
        ),
        padding: EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                child: Text(
                  name,
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: DataCol(
                data: confirmed,
                title: 'confirmed',
                colour: Colors.blue,
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: DataCol(
                data: active,
                title: 'active',
                colour: Colors.yellow,
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: DataCol(
                data: recovered,
                title: 'recovered',
                colour: Colors.green,
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: DataCol(
                data: deaths,
                title: 'deaths',
                colour: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
