import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String img;
  final String infoText;
  InfoCard({this.infoText, this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xff1f4868),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        image: DecorationImage(
          image: AssetImage('images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Image.asset(
              img,
              height: 100,
            ),
          ),
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                infoText,
                textAlign: TextAlign.center,
                overflow: TextOverflow.visible,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
