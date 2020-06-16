import 'package:flutter/material.dart';
import 'package:covid19updates/widgets/curved_top.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PreventionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1b1b2f),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0.0,
//            floating: true,
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
//              margin: EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0, bottom: 15.0),
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                decoration: BoxDecoration(
                  color: Color(0xffe43f5a),
//                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  image: DecorationImage(
                    image: AssetImage('images/background.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 40.0),
                          child: Text(
                            'Prevention is',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              'Better Than Cure!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                              ),
                            ),
                            Hero(
                              tag: 'heartbeat',
                              child: FaIcon(
                                FontAwesomeIcons.handHoldingHeart,
                                color: Color(0xff1b1b2f),
                                size: 35.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          CurvedTop(),
          SliverToBoxAdapter(
            child: InfoCard(
              img1: 'images/sneeze_in_elbow.png',
              img2: 'images/sneeze in elbow.png',
              infoText: "Sneeze Into Your Forearm or Elbow",
            ),
          ),
          SliverToBoxAdapter(
            child: InfoCard(
              img1: 'images/dont_touch_face.png',
              img2: 'images/dont touch face.png',
              infoText: "Don't Touch Your Face With Dirty Hands",
            ),
          ),
          SliverToBoxAdapter(
            child: InfoCard(
              img1: 'images/wear_mask.png',
              img2: 'images/wear mask.png',
              infoText: "Wear Mask and Gloves",
            ),
          ),
          SliverToBoxAdapter(
            child: InfoCard(
              img1: 'images/keep_distance.png',
              img2: 'images/keep distance.png',
              infoText: "Keep Distance With Others",
            ),
          ),
          SliverToBoxAdapter(
            child: InfoCard(
              img1: 'images/wash_hands.png',
              img2: 'images/wash hands.png',
              infoText: "Wash Your Hands Frequently",
            ),
          ),
          SliverToBoxAdapter(
            child: InfoCard(
              img1: 'images/stay_home.png',
              img2: 'images/clean.png',
              infoText: "Stay Home and Keep Your Surround Clean",
            ),
          ),
        ],
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String infoText;
  final String img1;
  final String img2;
  InfoCard({this.infoText, this.img1, this.img2});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
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
