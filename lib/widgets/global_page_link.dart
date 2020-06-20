import 'package:covid19updates/data/global_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GlobalPageLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => GlobalPage()));
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Color(0xff162447),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                flex: 3,
                fit: FlexFit.tight,
                child: Text(
                  'Global Data',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
              FaIcon(
                FontAwesomeIcons.globe,
                color: Color(0xffe43f5a),
                size: 30.0,
              ),
              Flexible(
                flex: 2,
                child: Icon(
                  Icons.navigate_next,
                  color: Colors.white,
                  size: 40.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
