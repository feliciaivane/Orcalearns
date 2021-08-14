import 'package:flutter/material.dart';
import 'dart:core';

import 'package:my_app/style.dart';
import 'package:my_app/Forum/forum.dart';

class NewQuestion extends StatefulWidget {
  @override
  createState() => _NewQuestionState();
}

class _NewQuestionState extends State<NewQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("New Question"),
    ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 30.0),
            child: Text('Ask a new question!'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 50.0),
            child:TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Type your question here...'),
            ),
          ),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Post Question',
                style: LoginButtonTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}