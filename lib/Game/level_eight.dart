import 'package:flutter/material.dart';
import 'package:my_app/style.dart';
import 'package:my_app/Game/level_nine.dart';

class LevelEight extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LevelEightState();
  }
}

class _LevelEightState extends State<LevelEight> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Back & Forth"),
      ),
      body: Container(
        height: 668,
        width: 500,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 15.0),
              child: Text("Back and Forth: Orca should swim up the line, then back to the starting point again (the direction Orca is facing does not matter)."),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 20.0, 0.0, 0.0),
              child: Text("Help Orca move back and forth!", style: AchievementsTitleTextStyle,),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(77.0, 10.0, 0.0, 20.0),
              child: Text("Hint: There are 3 ways to solve this level", style: BlackSmallTextStyle,),
            ),
            Container(
                width: 500,
                height: 400,
                child: _count == 1 ? Image.asset('assets/images/game/8/8_2.jpg')
                    : _count == 3 ? Image.asset('assets/images/game/8/8_3.jpg')
                    : _count == 4 ? Image.asset('assets/images/game/8/8_3_alt.jpg')
                    : (_count == 5 || _count == 7) ? Image.asset('assets/images/game/8/8_4.jpg')
                    : (_count == 6 || _count == 8) ? Image.asset('assets/images/game/8/8_5.jpg')
                    : _count == 11 ? Image.asset('assets/images/game/8/8_5_alt.jpg')
                    : Image.asset('assets/images/game/8/8_1.jpg')
            ),
            Container(
              width: 500,
              height: 5,
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
                onPressed: (_count == 0 || _count == 5 || _count == 7) ? () => setState(() => _count = _count + 1) : () => setState(() => _count = 0),
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
                onPressed: _count == 1 ? () => setState(() => _count = _count + 10) : () => setState(() => _count = 0),
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
                onPressed: (_count == 1 || _count == 4) ? () => setState(() => _count = _count + 3) : () => setState(() => _count = 0),
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
                onPressed: (_count == 1 || _count == 3) ? () => setState(() => _count = _count + 2) : () => setState(() => _count = 0),
              ),
            ),
          ),
        ],),
            Container(
              width: 500,
              height: 35,
            ),
            Container(
                width: 400,
                height: 320,
                child: _count == 1 ? Image.asset('assets/images/game/8/b2.jpg')
                    : _count == 3 ? Image.asset('assets/images/game/8/b3_r.jpg')
                    : _count == 4 ? Image.asset('assets/images/game/8/b3_l.jpg')
                    : _count == 5 ? Image.asset('assets/images/game/8/b4_r.jpg')
                    : _count == 6 ? Image.asset('assets/images/game/8/b5_r.jpg')
                    : _count == 7 ? Image.asset('assets/images/game/8/b4_l.jpg')
                    : _count == 8 ? Image.asset('assets/images/game/8/b5_l.jpg')
                    : _count == 11 ? Image.asset('assets/images/game/8/b3_b.jpg')
                    : Image.asset('assets/images/game/8/b1.jpg')
            ),
            Container(
              width: 500,
              height: 25,
            ),
            (_count == 6 || _count == 8 || _count == 11)
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
                              context, MaterialPageRoute(builder: (_) => LevelNine()));
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