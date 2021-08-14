import 'package:flutter/material.dart';
import 'package:my_app/style.dart';
import 'package:my_app/Game/achievement1.dart';

class LevelOne extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LevelOneState();
  }
}

class _LevelOneState extends State<LevelOne> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Line"),
        ),
      body: Container(
        height: 668,
        width: 500,
        child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 15.0),
            child: Text("Hi, welcome to Orcalearns! Orca is training for a swimming competition, help him practice reaching the finish line! (Scroll down to see Orca and all 4 blocks.)"),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 15.0),
            child: Text("Press the correct block to add it to your code at the bottom of this page! Finish your code to make Orca swim and complete this level! You should always start with this block:"),
          ),
          Container(
              width: 200,
              height: 160,
              child: Image.asset('assets/images/game/1/start.jpg')
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(45.0, 20.0, 0.0, 20.0),
            child: Text("Help Orca reach the finish line!", style: AchievementsTitleTextStyle,),
          ),
          Container(
            width: 500,
            height: 400,
            child: _count == 1 ? Image.asset('assets/images/game/1/1_2.jpg')
                : Image.asset('assets/images/game/1/1_1.jpg')
          ),
          Container(
            width: 500,
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 25.0, 0.0),
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.blue),
                child: TextButton(
                  child: Text(
                    "Move Forward", style: WhiteBodyTextStyle,
                  ),
                  onPressed: () => setState(() => _count = 1),
                ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 20.0, 20.0, 0.0),
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.blue),
              child: TextButton(
                child: Text(
                  "Move Backward", style: WhiteBodyTextStyle,
                ),
                onPressed: () => setState(() => _count = -1),
              ),
            ),
          ),
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 20.0, 25.0, 0.0),
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.blue),
                    child: TextButton(
                      child: Text(
                        "Turn Left", style: WhiteBodyTextStyle,
                      ),
                      onPressed: () => setState(() => _count = -1),
                    ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 20.0, 20.0, 0.0),
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.blue),
                  child: TextButton(
                    child: Text(
                      "Turn Right", style: WhiteBodyTextStyle,
                    ),
                    onPressed: () => setState(() => _count = -1),
                  ),
                ),
              ),
            ],),
          Container(
              width: 400,
              height: 320,
              child: _count == 1 ? Image.asset('assets/images/game/1/b2.jpg')
                  : Image.asset('assets/images/game/1/b1.jpg')
          ),
          _count == 1
              ? Column(
            children: <Widget> [
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                    child: Text(
                      "Retry",
                      style: LoginButtonTextStyle,
                    ),
    onPressed: () => setState(() => _count = 0),
                ),
              ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
            child: Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
              child: Text(
                "Next",
                style: LoginButtonTextStyle,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => Achievement1()));
              }
          ),
          ),
      ),
              ],
          )
              : Container(),
          ],
      ),
      ),
    );
  }
}