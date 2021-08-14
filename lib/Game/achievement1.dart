import 'package:flutter/material.dart';
import 'package:my_app/achievements.dart';
import 'package:my_app/style.dart';
import 'package:my_app/Game/level_two.dart';

class Achievement1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Achievement1State();
  }
}

class _Achievement1State extends State<Achievement1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Achievement"),
      ),
      body: Container(
        height: 668,
        width: 500,
        child: Column(
              children: <Widget> [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                  child: Text("CONGRATULATIONS!", style: AchievementsTitleTextStyle),
                ),
                Container(
                  width: 400,
                  height: 320,
                  child: Image.asset('assets/images/achievements/completed/beginner.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                  child: Text("Achievement Unlocked: Beginner", style: AchievementsTitleTextStyle,),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                  child: Container(
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                        child: Text(
                          "Next",
                          style: LoginButtonTextStyle,
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (_) => LevelTwo()));
                        }
                    ),
                  ),
                ),
              ],
            )
        ),
    );
  }
}