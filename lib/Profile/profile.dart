import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:core';
import 'package:my_app/style.dart';
import 'package:my_app/Profile/settings.dart';
import 'package:my_app/Profile/add_friends.dart';

class Profile extends StatefulWidget {
  @override
  createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            tooltip: "Go to Settings",
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Settings()));
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 30.0, 0.0, 0.0),
                        child: Text('Bob',
                            style:
                                TitleTextStyle), //change to actual user's name
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                        child: Text('bobthebuilder',
                            style:
                                BlackBodyTextStyle), //change to actual user's username
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                        child: Text('LEVEL ONE',
                            style:
                            BlackBodyTextStyle), //change to actual user's username
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(150.0, 30.0, 0.0, 0.0),
                    child: Container(
                      width: 100,
                      height: 80,
                      child: Image.asset(
                          'assets/images/just_orca.jpg'), //change to actual user's dp
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 70.0, 0.0, 0.0),
                child: Text('Stats', style: TitleTextStyle),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                    child: statsLabel(
                        'assets/images/orcalearns_logo', 1, 'Day Streak'),
                    //change 0 to actual streak days
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                    child: statsLabel(
                        'assets/images/orcalearns_logo', 30, 'EXP Earned'),
                    //change 0 to actual EXP
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 70.0, 0.0, 0.0),
                    child: Text('Friends', style: TitleTextStyle),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(235.0, 70.0, 0.0, 0.0),
                    child: IconButton(
                      icon: Icon(Icons.person_add),
                      iconSize: 30,
                      tooltip: "Add Friends",
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => AddFriends()));
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
                child: Container(
                  height: 220,
                  width: 363,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 15.0, 0.0, 10.0),
                        child: Text('Following',
                            style: AchievementsTitleTextStyle),
                      ),
                      Container(
                        height: 70,
                        width: 300,
                        child: ListView(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  20.0, 10.0, 0.0, 10.0),
                              child: Text(
                                  'Not following anyone yet :('), //MAKE IT SHOW ACTUAL ADDED FRIENDS!!
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 20.0, 0.0, 0.0),
                child: Container(
                  height: 220,
                  width: 363,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 15.0, 0.0, 10.0),
                        child: Text('Followers',
                            style: AchievementsTitleTextStyle),
                      ),
                      Container(
                        height: 70,
                        width: 300,
                        child: ListView(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  20.0, 10.0, 0.0, 10.0),
                              child: Text(
                                  'No followers yet :('), //MAKE IT SHOW ACTUAL FOLLOWERS!!
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget statsLabel(String image, int value, String stats) {
  return Container(
    height: 60,
    width: 170,
    decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5)),
    child: Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            width: 50,
            height: 40,
            child: Image.asset(
                'assets/images/just_orca.jpg'), //change to actual user's dp
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(2.0, 10.0, 5.0, 0.0),
              child: Text(value.toString(), style: BlackBodyTextBoldStyle),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(2.0, 0.0, 5.0, 5.0),
              child: Text(stats),
            ),
          ],
        ),
      ],
    ),
  );
}
