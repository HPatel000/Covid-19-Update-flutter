import 'package:covid19updates/widgets/curved_top.dart';
import 'package:flutter/material.dart';

class PreventionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        CurvedTop(),
        SliverToBoxAdapter(
          child: InfoCardPrevention(
            img1: 'images/prevention/sneeze_in_elbow.png',
            img2: 'images/prevention/sneeze in elbow.png',
            infoText: "Sneeze Into Your Forearm or Elbow",
          ),
        ),
        SliverToBoxAdapter(
          child: InfoCardPrevention(
            img1: 'images/prevention/dont_touch_face.png',
            img2: 'images/prevention/dont touch face.png',
            infoText: "Don't Touch Your Face With Dirty Hands",
          ),
        ),
        SliverToBoxAdapter(
          child: InfoCardPrevention(
            img1: 'images/prevention/wear_mask.png',
            img2: 'images/prevention/wear mask.png',
            infoText: "Wear Mask and Gloves",
          ),
        ),
        SliverToBoxAdapter(
          child: InfoCardPrevention(
            img1: 'images/prevention/keep_distance.png',
            img2: 'images/prevention/keep distance.png',
            infoText: "Keep Distance With Others",
          ),
        ),
        SliverToBoxAdapter(
          child: InfoCardPrevention(
            img1: 'images/prevention/wash_hands.png',
            img2: 'images/prevention/wash hands.png',
            infoText: "Wash Your Hands Frequently",
          ),
        ),
        SliverToBoxAdapter(
          child: InfoCardPrevention(
            img1: 'images/prevention/stay_home.png',
            img2: 'images/prevention/clean.png',
            infoText: "Stay Home and Keep Your Surround Clean",
          ),
        ),
      ],
    );
  }
}

class InfoCardPrevention extends StatelessWidget {
  final String infoText;
  final String img1;
  final String img2;
  InfoCardPrevention({this.infoText, this.img1, this.img2});
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
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Image.asset(
              img1,
              height: 100,
            ),
          ),
          Flexible(
            flex: 2,
            fit: FlexFit.loose,
            child: Text(
              infoText,
              textAlign: TextAlign.center,
              overflow: TextOverflow.visible,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Flexible(
            flex: 1,
            child: Image.asset(
              img2,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
