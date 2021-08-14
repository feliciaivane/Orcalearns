import 'package:flutter/material.dart';
import 'package:my_app/style.dart';
import 'package:my_app/Game/level_seven.dart';

class LevelSix extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LevelSixState();
  }
}

class _LevelSixState extends State<LevelSix> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stairs"),
      ),
      body: Container(
        height: 668,
        width: 500,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 15.0),
              child: Text("Now that you know how to make Orca turn left and right, use both to help Orca swim in more complicated shapes!"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(45.0, 20.0, 0.0, 20.0),
              child: Text("Help Orca reach the finish line!", style: AchievementsTitleTextStyle,),
            ),
            Container(
                width: 500,
                height: 400,
                child: _count == 1 ? Image.asset('assets/images/game/6/6_2.jpg')
                    : _count == 3 ? Image.asset('assets/images/game/6/6_3.jpg')
                    : _count == 4 ? Image.asset('assets/images/game/6/6_4.jpg')
                    : _count == 7 ? Image.asset('assets/images/game/6/6_5.jpg')
                    : _count == 8 ? Image.asset('assets/images/game/6/6_6.jpg')
                    : Image.asset('assets/images/game/6/6_1.jpg')
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
                      onPressed: (_count == 0 || _count == 3 || _count == 7) ? () => setState(() => _count = _count + 1) : () => setState(() => _count = 0),
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
                      onPressed: _count == 4 ? () => setState(() => _count = _count + 3) : () => setState(() => _count = 0),
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
                      onPressed: _count == 1 ? () => setState(() => _count = _count + 2) : () => setState(() => _count = 0),
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
                child: _count == 1 ? Image.asset('assets/images/game/6/b2.jpg')
                    : _count == 3 ? Image.asset('assets/images/game/6/b3.jpg')
                    : _count == 4 ? Image.asset('assets/images/game/6/b4.jpg')
                    : _count == 7 ? Image.asset('assets/images/game/6/b5.jpg')
                    : _count == 8 ? Image.asset('assets/images/game/6/b6.jpg')
                    : Image.asset('assets/images/game/6/b1.jpg')
            ),
            Container(
              width: 500,
              height: 35,
            ),
            _count == 8
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
                              context, MaterialPageRoute(builder: (_) => LevelSeven()));
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