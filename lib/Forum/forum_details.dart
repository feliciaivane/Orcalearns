import 'package:flutter/material.dart';
import 'dart:core';

import 'package:my_app/style.dart';
import 'package:my_app/forum/new_comment.dart';


class ForumDetailPage extends StatefulWidget {
  @override
  _ForumDetailPageState createState() => new _ForumDetailPageState();
}

var forumPostArr = [
  new ForumPostEntry("User1", "2 Minutes ago", 0, "Hello,yes."),
  new ForumPostEntry("User2", "23 Hours ago", 1, "yeet"),
  new ForumPostEntry("User3", "2 Days ago", 5, "noot noot"),
  new ForumPostEntry("User4", "3 Days ago", 0, "hmmmmmmm"),
];

class _ForumDetailPageState extends State<ForumDetailPage> {
  @override
  Widget build(BuildContext context) {
    var questionSection = new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Column(
        children: <Widget>[
          new Text(
            "Can I noot noot?",
            textScaleFactor: 1.5,
            style: new TextStyle(fontWeight: FontWeight.bold),
          ),
          new Padding(
            padding: const EdgeInsets.fromLTRB(137.0, 12.0, 0.0, 12.0),
            child: new IconWithText(
                  Icons.check_circle,
                  "Answered",
                  iconColor: Colors.green,
                ),
          ),
          new Divider()
        ],
      ),
    );

    var responses = new Container(
        padding: const EdgeInsets.all(8.0),
        child: new ListView.builder(
          itemBuilder: (BuildContext context, int index) => new ForumPost(forumPostArr[index]),
          itemCount: forumPostArr.length,
        )
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Thread"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_comment),
            tooltip: "Comment on Thread",
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => NewComment()));
            },
          ),
        ],
      ),
      body: new Column(
        children: <Widget>[
          questionSection,
          new Expanded(
              child: new Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: responses,
              ))
        ],
      ),
    );
  }
}

class ForumPostEntry{
  final String username;
  final String hours;
  final int likes;
  final String text;

  ForumPostEntry(this.username, this.hours, this.likes, this.text);
}

class ForumPost extends StatelessWidget {
  final ForumPostEntry entry;

  ForumPost(this.entry);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.all(5.0),
      decoration: new BoxDecoration(
        color: Colors.blueGrey[200],
        borderRadius: const BorderRadius.all(const Radius.circular(20.0)),
      ),
      child: new Column(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              color: Colors.blueGrey[300],
              borderRadius: const BorderRadius.only(
                  topLeft: const Radius.circular(20.0),
                  topRight: const Radius.circular(20.0)),
            ),
            child: new Row(
              children: <Widget>[
                new Icon(
                  Icons.person,
                  size: 50.0,
                ),
                new Expanded(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(
                          entry.username
                      ),
                      new Text(
                          entry.hours
                      ),
                    ],
                  ),
                ),
                new Row(
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 2.0),
                      child: new Icon(Icons.thumb_up),
                    ),
                    new Padding(
                      padding: const EdgeInsets.fromLTRB(2.0, 2.0, 10.0, 2.0),
                      child: new Text(entry.likes.toString()),
                    ),
                  ],
                )
              ],
            ),
          ),
          new Container(
            margin: const EdgeInsets.only(left: 2.0,right: 2.0,bottom: 2.0),
            padding: const EdgeInsets.all(8.0),
            decoration: new BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.only(bottomLeft :const Radius.circular(20.0),bottomRight :const Radius.circular(20.0))
            ),
            child: new Text(entry.text),
          ),
        ],
      ),
    );
  }
}

class IconWithText extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Color iconColor;

  IconWithText(this.iconData, this.text, {required this.iconColor});
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Row(
        children: <Widget>[
          new Icon(
            this.iconData,
            color: this.iconColor,
          ),
          new Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: new Text(this.text),
          ),
        ],
      ),
    );
  }
}