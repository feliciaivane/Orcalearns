import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:core';
import 'package:my_app/style.dart';

class Achievements extends StatefulWidget {
  @override
  createState() => _AchievementsState();
}

 class _AchievementsState extends State<Achievements>{
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Achievements"),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: <Widget>[
          achievement('assets/images/achievements/completed/photogenic.jpg', 'assets/images/achievements/uncompleted/photogenic.jpg', 'Photogenic', 'Add a profile photo', 0, 1),
          achievement('assets/images/achievements/completed/beginner.jpg', 'assets/images/achievements/uncompleted/beginner.jpg', 'Beginner', 'Complete your first lesson', 1, 1),
          achievement('assets/images/achievements/completed/butterfly.jpg', 'assets/images/achievements/uncompleted/butterfly.jpg', 'Social Butterfly', 'Follow 3 friends', 0, 3),
          achievement('assets/images/achievements/completed/fire.jpg', 'assets/images/achievements/uncompleted/fire.jpg', 'On Fire', 'Hit a 3-day streak', 1, 3),
          achievement('assets/images/achievements/completed/master.jpg', 'assets/images/achievements/uncompleted/master.jpg', 'Master', 'Reach level 5', 1, 5),
          achievement('assets/images/achievements/completed/flawless.jpg', 'assets/images/achievements/uncompleted/flawless.jpg', 'Flawless', 'Complete 5 lessons with no mistakes', 1, 5),
          achievement('assets/images/achievements/completed/trophy.jpg', 'assets/images/achievements/uncompleted/trophy.jpg', 'Number One', 'Reach #1 on the leaderboard', 0, 1),
          achievement('assets/images/achievements/completed/wise.jpg', 'assets/images/achievements/uncompleted/wise.jpg', 'Wise', 'Participate in the forum 5 times', 0, 5),
          achievement('assets/images/achievements/completed/enthusiastic.jpg', 'assets/images/achievements/uncompleted/enthusiastic.jpg', 'Enthusiastic', 'Earn 200XP in a day', 50, 200),
          achievement('assets/images/achievements/completed/collector.jpg', 'assets/images/achievements/uncompleted/collector.jpg', 'Collector', 'Unlock all other achievements', 0, 1),
        ],
      ),
    );
  }
}

Widget achievement(String completedImage, String uncompletedImage, String title, String description, int progress, int total) {
  return Container(
    child: Column (
      children: <Widget>[
        progress != total
        ? Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 100,
              height: 80,
              child: progress == total ? Image.asset(completedImage): Image.asset(uncompletedImage),
            ),
            SizedBox(
              height: 155,
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 11.0, 0.0, 5.0),
                      child: Text(title, style: AchievementsTitleTextStyle),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 4.0),
                      child: Text(description),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: SizedBox(
                      height: 40,
                      width: 350,
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            flex: 5,
                            child: LinearProgressIndicator(
                              backgroundColor: Colors.blueGrey,
                              valueColor: AlwaysStoppedAnimation<Color>(Colors.lightBlueAccent),
                              value: progress/total,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                              child: Text(
                                progress.toString() + '/' + total.toString(),
                                style: AchievementsNumberTextStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
        : Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
            width: 100,
                height: 80,
                child: progress == total ? Image.asset(completedImage): Image.asset(uncompletedImage),
            ),
            SizedBox(
              height: 150,
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 5.0),
                      child: Text(title, style: AchievementsTitleTextStyle),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                      child: Text(description),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    ),
  );
}