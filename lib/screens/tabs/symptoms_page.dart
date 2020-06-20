import 'package:covid19updates/widgets/curved_top.dart';
import 'package:covid19updates/widgets/info_card.dart';
import 'package:flutter/material.dart';

class SymptomsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        CurvedTop(),
        SliverToBoxAdapter(
          child: InfoCard(
            img: 'images/symptoms/fever.png',
            infoText: "High Fever and Tiredness",
          ),
        ),
        SliverToBoxAdapter(
          child: InfoCard(
            img: 'images/symptoms/headache.png',
            infoText: "Headache and Loss of Test or Smell",
          ),
        ),
        SliverToBoxAdapter(
          child: InfoCard(
            img: 'images/symptoms/sneeze.png',
            infoText: "Dry Cough and Sneeze, Chest Pain or Pressure",
          ),
        ),
        SliverToBoxAdapter(
          child: InfoCard(
            img: 'images/symptoms/sore_throat.png',
            infoText: "Sore Throat, Difficulty in Breathing",
          ),
        ),
      ],
    );
  }
}
