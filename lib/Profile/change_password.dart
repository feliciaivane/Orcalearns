import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:core';
import 'package:my_app/style.dart';
import 'package:my_app/Profile/settings.dart';

class ChangePassword extends StatefulWidget {
  @override
  createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Password"),
      ),
      body: Column(
        children: <Widget>[
          boxWithLabel('Old Password'),
          boxWithLabel('New Password'),
          boxWithLabel('Confirm Password'),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0),
            child: Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Save',
                  style: LoginButtonTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget boxWithLabel(String label) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
          child: Text(label),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    ),
  );
}
