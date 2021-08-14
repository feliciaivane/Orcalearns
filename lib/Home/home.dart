import 'package:flutter/material.dart';
import 'package:my_app/Forum/forum.dart';
import 'package:my_app/achievements.dart';
import 'package:my_app/Profile/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_app/leaderboard.dart';
import 'package:my_app/game/menu.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  final _auth = FirebaseAuth.instance;
  late User loggedInUser;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  int _index = 0;
  final List<Widget> _tabs = [
    new Menu(),
    new Profile(),
    new Achievements(),
    new Leaderboard(),
    new Forum(title: 'Forum', key: Key("2"),),
  ];

  void getCurrentUser() async {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch (e) {
    print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: changeTab,
        currentIndex: _index, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.sentiment_satisfied_alt_rounded),
            title: new Text('Play'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text('Achievements'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.thumb_up_alt_rounded),
            title: Text('Leaderboard'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.speaker_notes),
            title: Text('Forum'),
          )
        ],
      ),
    );
  }

  void changeTab(int newIndex) {
    setState(() {
      _index = newIndex;
    });
  }
}