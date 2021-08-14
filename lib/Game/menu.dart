import 'package:flutter/material.dart';
import 'dart:core';
import 'package:my_app/Game/level_one.dart';
import 'package:my_app/Game/level_two.dart';
import 'package:my_app/Game/level_three.dart';
import 'package:my_app/Game/level_four.dart';
import 'package:my_app/Game/level_five.dart';
import 'package:my_app/Game/level_six.dart';
import 'package:my_app/Game/level_seven.dart';
import 'package:my_app/Game/level_eight.dart';
import 'package:my_app/Game/level_nine.dart';

class Menu extends StatefulWidget {
  @override
  createState() => _MenuState();
}

class _MenuState extends State<Menu>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Level Select"),
          automaticallyImplyLeading: false,
    ),
    body:
        Column(
    children: <Widget> [
      levels('assets/images/game/completed/level_one.jpg', 'assets/images/game/uncompleted/level_one.jpg', true, "LevelOne",
          'assets/images/game/completed/level_two.jpg', 'assets/images/game/uncompleted/level_two.jpg', true, "LevelTwo",
          'assets/images/game/completed/level_three.jpg', 'assets/images/game/uncompleted/level_three.jpg', true, "LevelThree", context),
      levels('assets/images/game/completed/level_four.jpg', 'assets/images/game/uncompleted/level_four.jpg', true, "LevelFour",
          'assets/images/game/completed/level_five.jpg', 'assets/images/game/uncompleted/level_five.jpg', true, "LevelFive",
          'assets/images/game/completed/level_six.jpg', 'assets/images/game/uncompleted/level_six.jpg', true, "LevelSix", context),
      levels('assets/images/game/completed/level_seven.jpg', 'assets/images/game/uncompleted/level_seven.jpg', true, "LevelSeven",
          'assets/images/game/completed/level_eight.jpg', 'assets/images/game/uncompleted/level_eight.jpg', true, "LevelEight",
          'assets/images/game/completed/level_nine.jpg', 'assets/images/game/uncompleted/level_nine.jpg', true, "LevelNine", context),
      ],
        ),
    );
  }
}

Widget levels(String completedImageOne, String uncompletedImageOne, bool completedOne, String levelOne,
    String completedImageTwo, String uncompletedImageTwo, bool completedTwo, String levelTwo,
    String completedImageThree, String uncompletedImageThree, bool completedThree, String levelThree,
    BuildContext context) {
  return Row(
    children: <Widget> [
      level(completedImageOne, uncompletedImageOne, completedOne, context, levelOne),
      level(completedImageTwo, uncompletedImageTwo, completedTwo, context, levelTwo),
      level(completedImageThree, uncompletedImageThree, completedThree, context, levelThree),
    ],
  );
}

Widget level(String completedImage, String uncompletedImage, bool completed, BuildContext context, String level) {
  if (level == "LevelOne") {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.7, 40.0, 0.0, 0.0),
      child: Container(
        height: 100,
        width: 125,
        child: FlatButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => LevelOne()));
          },
          padding: EdgeInsets.all(0.0),
          child: completed ? Image.asset(completedImage) : Image.asset(
              uncompletedImage),
        ),
      ),
    );
  } else if (level == "LevelTwo") {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.7, 40.0, 0.0, 0.0),
      child: Container(
        height: 100,
        width: 125,
        child: FlatButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => LevelTwo()));
          },
          padding: EdgeInsets.all(0.0),
          child: completed ? Image.asset(completedImage) : Image.asset(
              uncompletedImage),
        ),
      ),
    );
  } else if (level == "LevelThree") {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.7, 40.0, 0.0, 0.0),
      child: Container(
        height: 100,
        width: 125,
        child: FlatButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => LevelThree()));
          },
          padding: EdgeInsets.all(0.0),
          child: completed ? Image.asset(completedImage) : Image.asset(
              uncompletedImage),
        ),
      ),
    );
  } else if (level == "LevelFour") {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.7, 40.0, 0.0, 0.0),
      child: Container(
        height: 100,
        width: 125,
        child: FlatButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => LevelFour()));
          },
          padding: EdgeInsets.all(0.0),
          child: completed ? Image.asset(completedImage) : Image.asset(
              uncompletedImage),
        ),
      ),
    );
  } else if (level == "LevelFive") {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.7, 40.0, 0.0, 0.0),
      child: Container(
        height: 100,
        width: 125,
        child: FlatButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => LevelFive()));
          },
          padding: EdgeInsets.all(0.0),
          child: completed ? Image.asset(completedImage) : Image.asset(
              uncompletedImage),
        ),
      ),
    );
  } else if (level == "LevelSix") {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.7, 40.0, 0.0, 0.0),
      child: Container(
        height: 100,
        width: 125,
        child: FlatButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => LevelSix()));
          },
          padding: EdgeInsets.all(0.0),
          child: completed ? Image.asset(completedImage) : Image.asset(
              uncompletedImage),
        ),
      ),
    );
  } else if (level == "LevelSeven") {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.7, 40.0, 0.0, 0.0),
      child: Container(
        height: 100,
        width: 125,
        child: FlatButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => LevelSeven()));
          },
          padding: EdgeInsets.all(0.0),
          child: completed ? Image.asset(completedImage) : Image.asset(
              uncompletedImage),
        ),
      ),
    );
  } else if (level == "LevelEight") {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.7, 40.0, 0.0, 0.0),
      child: Container(
        height: 100,
        width: 125,
        child: FlatButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => LevelEight()));
          },
          padding: EdgeInsets.all(0.0),
          child: completed ? Image.asset(completedImage) : Image.asset(
              uncompletedImage),
        ),
      ),
    );
  } else if (level == "LevelNine") {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.7, 40.0, 0.0, 0.0),
      child: Container(
        height: 100,
        width: 125,
        child: FlatButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => LevelNine()));
          },
          padding: EdgeInsets.all(0.0),
          child: completed ? Image.asset(completedImage) : Image.asset(
              uncompletedImage),
        ),
      ),
    );
  } else {
    return Container();
  }
}