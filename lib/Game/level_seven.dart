import 'package:flutter/material.dart';
import 'package:my_app/style.dart';
import 'package:my_app/Game/level_eight.dart';

class LevelSeven extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LevelSevenState();
  }
}

class _LevelSevenState extends State<LevelSeven> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Big Spoon"),
      ),
      body: Container(
        height: 668,
        width: 500,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(45.0, 20.0, 0.0, 20.0),
              child: Text("Help Orca reach the finish line!", style: AchievementsTitleTextStyle,),
            ),
            Container(
                width: 500,
                height: 400,
                child: _count == 1 ? Image.asset('assets/images/game/7/7_2.jpg')
                    : _count == 4 ? Image.asset('assets/images/game/7/7_3.jpg')
                    : _count == 5 ? Image.asset('assets/images/game/7/7_4.jpg')
                    : _count == 7 ? Image.asset('assets/images/game/7/7_5.jpg')
                    : _count == 8 ? Image.asset('assets/images/game/7/7_6.jpg')
                    : _count == 10 ? Image.asset('assets/images/game/7/7_7.jpg')
                    : _count == 11 ? Image.asset('assets/images/game/7/7_8.jpg')
                    : _count == 13 ? Image.asset('assets/images/game/7/7_9.jpg')
                    : _count == 14 ? Image.asset('assets/images/game/7/7_10.jpg')
                    : _count == 16 ? Image.asset('assets/images/game/7/7_11.jpg')
                    : _count == 17 ? Image.asset('assets/images/game/7/7_12.jpg')
                    : _count == 20 ? Image.asset('assets/images/game/7/7_13.jpg')
                    : _count == 21 ? Image.asset('assets/images/game/7/7_14.jpg')
                    : Image.asset('assets/images/game/7/7_1.jpg')
            ),
            Container(
              width: 500,
              height: 15,
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
                      onPressed: (_count == 0 || _count == 4 || _count == 7 || _count == 10 || _count == 13 || _count == 16 || _count == 20) ? () => setState(() => _count = _count + 1) : () => setState(() => _count = 0),
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
                      onPressed: () => setState(() => _count = 0),
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
                      onPressed: (_count == 1 || _count == 17) ? () => setState(() => _count = _count + 3) : () => setState(() => _count = 0),
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
                      onPressed: (_count == 5 || _count == 8 || _count == 11 || _count == 14) ? () => setState(() => _count = _count + 2) : () => setState(() => _count = 0),
                    ),
                  ),
                ),
              ],),
            Container(
              width: 500,
              height: 50,
            ),
            Container(
                width: 400,
                height: 320,
                child: _count == 1 ? Image.asset('assets/images/game/7/b2.jpg')
                    : _count == 4 ? Image.asset('assets/images/game/7/b3.jpg')
                    : _count == 5 ? Image.asset('assets/images/game/7/b4.jpg')
                    : _count == 7 ? Image.asset('assets/images/game/7/b5.jpg')
                    : _count == 8 ? Image.asset('assets/images/game/7/b6.jpg')
                    : _count == 10 ? Image.asset('assets/images/game/7/b7.jpg')
                    : _count == 11 ? Image.asset('assets/images/game/7/b8.jpg')
                    : (_count == 13 || _count == 14 || _count == 16 || _count == 17 || _count == 20 || _count == 21) ? Image.asset('assets/images/game/7/b9.jpg')
                    : Image.asset('assets/images/game/7/b1.jpg')
            ),
            Container(
                width: 400,
                height: 320,
                child: _count == 13 ? Image.asset('assets/images/game/7/b10.jpg')
                    : _count == 14 ? Image.asset('assets/images/game/7/b11.jpg')
                    : _count == 16 ? Image.asset('assets/images/game/7/b12.jpg')
                    : _count == 17 ? Image.asset('assets/images/game/7/b13.jpg')
                    : _count == 20 ? Image.asset('assets/images/game/7/b14.jpg')
                    : _count == 21 ? Image.asset('assets/images/game/7/b15.jpg')
                    : Container(),
            ),
            _count == 21
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
                              context, MaterialPageRoute(builder: (_) => LevelEight()));
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