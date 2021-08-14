import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:core';

import 'package:my_app/style.dart';

class Leaderboard extends StatefulWidget {
  @override
  createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leaderboard"),
        automaticallyImplyLeading: false,
      ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0.0),
              child: Text('RANK', style: AchievementsTitleTextStyle),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(45.0, 10.0, 50.0, 0.0),
              child: Text('PLAYER', style: AchievementsTitleTextStyle),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(38.0, 10.0, 0.0, 0.0),
              child: Text('EXP', style: AchievementsTitleTextStyle),
            ),
          ],
        ),
      Container(
        height: 668,
      width: 500,
      child: ListView(
        children: <Widget>[
          entry(1, 'assets/images/leaderboard/person 1.jpg',
              'Meg4n', 600),
          entry(2, 'assets/images/leaderboard/person 2.jpg',
              'Du4n3', 570),
          entry(3, 'assets/images/leaderboard/person 3.jpg',
              'Minn4', 400),
          entry(4, 'assets/images/leaderboard/person 4.jpg',
              'Jesl11n', 321),
          entry(5, 'assets/images/leaderboard/person 5.jpg',
              'Bob23', 320),
        ],
      ),
      ),
    ],
      ),
    );
  }
}

Widget entry(int rank, String image, String name, int EXP) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(10.0, 25.0, 10.0, 0.0),
    child: Container(
      padding: const EdgeInsets.all(3.0),
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
      decoration: new BoxDecoration(
        color: Colors.grey[300],
        borderRadius: new BorderRadius.all(new Radius.circular(15.0)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
            child: Text(rank.toString(), style: LeaderboardRankTextStyle),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 0.0),
              child: Container(
                height: 100,
                width: 80,
                child: Image.asset(image),
              ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 50.0, 0.0),
            child: Text(name, style: AchievementsTitleTextStyle),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
            child: Text(EXP.toString()),
          ),
        ],
      ),
    ),
  );
}
