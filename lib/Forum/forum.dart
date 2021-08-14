import 'package:flutter/material.dart';
import 'package:my_app/style.dart';
import 'package:my_app/Forum/forum_details.dart';
import 'package:my_app/Forum/new_question.dart';


class Forum extends StatefulWidget {
  Forum({required Key key, required this.title}) : super(key: key);

  final String title;

  @override
  _ForumState createState() => new _ForumState();
}

class _ForumState extends State<Forum> {
  static final listItemsData = [
    new ListEntry("Forum 1", "test", "description 1", 54, 2, true),
    new ListEntry("Forum 2", "test", "description 2",  154, 3, false),
    new ListEntry("Forum 3", "test", "description 3", 971, 0, false),
    new ListEntry("Forum 4", "test", "description 4",  124, 2, true),
    new ListEntry("Forum 5", "test", "description 5",  412, 5, true),
    new ListEntry("Forum 6", "test", "description 6",  12, 1, true),
  ];
  var listView = new ListView.builder(
    itemBuilder: (BuildContext context, int index) =>
    new EntryItem(listItemsData[index]),
    itemCount: listItemsData.length,
    shrinkWrap: true,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(widget.title),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.quiz),
            tooltip: "Post a Question",
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => NewQuestion()));
            },
          ),
        ],
          ),
      body: new Container(
        child: new Column(
          children: <Widget>[listView],
        ),
      ),
    );
  }
  void _onSearchPressed() {
    Navigator.pop(context);
  }
}

class ListEntry {
  final String title;
  final String icon;
  final String description;
  final int views;
  final int responses;
  final bool answered;

  ListEntry(this.title, this.icon, this.description, this.views, this.responses, this.answered);
}

class CategoryIcon extends StatelessWidget {
  const CategoryIcon(this.icon, this.iconText, this.selected);

  final String iconText;
  final IconData icon;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        children: <Widget>[
          new IconButton(
            icon: new Icon(icon),
            onPressed: _onSearchPressed,
            color: selected == true
                ? Colors.orange
                : Colors.black,
          ),
          new Text(iconText)
        ],
      ),
    );
  }

  static void _onSearchPressed() {
  }
}

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final ListEntry entry;

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 25.0, 10.0, 0.0),
    child: Container(
      padding: const EdgeInsets.all(3.0),
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
      decoration: new BoxDecoration(
        color: Colors.grey[300],
        borderRadius: new BorderRadius.all(new Radius.circular(15.0)),
      ),
      child: TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => ForumDetailPage()));
            },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 14.0, 0.0, 0.0),
          child: Icon(Icons.dashboard, color: Colors.blueGrey),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 4.0, 0.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                new Text(entry.title, style: AchievementsTitleTextStyle),
                new Text(entry.description, style: BlackBodyTextStyle),
              ],
            ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(120.0, 7.0, 0.0, 0.0),
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  Icon(Icons.comment, color: Colors.blueGrey),
                  Text(entry.responses.toString(), style: BlackBodyTextStyle),
                ],
              ),
              //CategoryIcon(
                //Icons.comment, entry.responses.toString(), false),
            ),
          ],
        ),

        ),
    ),
    );
  }
}
