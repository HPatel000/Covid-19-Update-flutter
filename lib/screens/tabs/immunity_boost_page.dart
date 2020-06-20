import 'package:covid19updates/widgets/curved_top.dart';
import 'package:flutter/material.dart';

class ImmunityBoost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        CurvedTop(),
        SliverToBoxAdapter(
          child: ImmunityCard(
            img: 'images/immunity/drink_water.png',
            infoText: "Drink plenty of Water",
          ),
        ),
        SliverToBoxAdapter(
          child: ImmunityCard(
            img: 'images/immunity/meditation.png',
            infoText: "Do Meditation and Yoga Everyday",
          ),
        ),
        SliverToBoxAdapter(
          child: ImmunityCard(
            img: 'images/immunity/sleep.png',
            infoText: "Get Enough Sleep",
          ),
        ),
        SliverToBoxAdapter(
          child: ImmunityCard(
            img: 'images/immunity/wash_fruits.png',
            infoText: "Wash Fruits And Vegetables before Use",
          ),
        ),
        SliverToBoxAdapter(
          child: ImmunityCard(
            img: 'images/immunity/fruits_veggis.png',
            infoText: "Eat Fruits and Vegetables More",
          ),
        ),
        SliverToBoxAdapter(
          child: ImmunityCard(
            img: 'images/immunity/vitamins.png',
            infoText: "Take Vitamins",
          ),
        ),
        SliverToBoxAdapter(
          child: ImmunityCard(
            img: 'images/immunity/quit_smoking.png',
            infoText: "Quit Every bad Habits that can affect your Heath",
          ),
        ),
      ],
    );
  }
}

class ImmunityCard extends StatelessWidget {
  final String img;
  final String infoText;
  ImmunityCard({this.infoText, this.img});

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
          Image.asset(
            img,
            height: 100,
          ),
          Flexible(
            child: Text(
              infoText,
              textAlign: TextAlign.center,
              overflow: TextOverflow.visible,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
