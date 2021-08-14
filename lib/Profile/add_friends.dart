import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:core';
//import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:my_app/style.dart';

class AddFriends extends StatefulWidget {
  @override
  createState() => _AddFriendsState();
}

class _AddFriendsState extends State<AddFriends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find Friends"),
      ),
      body:
      Padding(
        padding: EdgeInsets.only(top: 16,left: 16,right: 16),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search for your friends' usernames...",
            hintStyle: TextStyle(color: Colors.grey.shade600),
            prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
            filled: true,
            fillColor: Colors.grey.shade100,
            contentPadding: EdgeInsets.all(8),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                    color: Colors.grey.shade100
                )
            ),
          ),
        ),
      ),
    );
  }
}

