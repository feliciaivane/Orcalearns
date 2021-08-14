import 'package:flutter/material.dart';
import 'package:my_app/style.dart';
import 'package:my_app/Game/level_six.dart';

class LevelFive extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LevelFiveState();
  }
}

class _LevelFiveState extends State<LevelFive> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Square (again)"),
      ),
      body: Container(
        height: 668,
        width: 500,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
              child: Text("Help Orca move in a square (again)!", style: AchievementsTitleTextStyle,),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(130.0, 10.0, 0.0, 20.0),
              child: Text("Hint: Opposite of Level 3", style: BlackSmallTextStyle,),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(125.0, 10.0, 0.0, 0.0),
              child: Text("Step 1: Move Forward"),
            ),
            Container(
                width: 500,
                height: 400,
                child: _count == 1 ? Image.asset('assets/images/game/5/5_2.jpg')
                    : _count == 3 ? Image.asset('assets/images/game/5/5_3.jpg')
                    : _count == 4 ? Image.asset('assets/images/game/5/5_4.jpg')
                    : _count == 6 ? Image.asset('assets/images/game/5/5_5.jpg')
                    : _count == 7 ? Image.asset('assets/images/game/5/5_6.jpg')
                    : _count == 9 ? Image.asset('assets/images/game/5/5_7.jpg')
                    : _count == 10 ? Image.asset('assets/images/game/5/5_8.jpg')
                    : Image.asset('assets/images/game/5/5_1.jpg')
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
                      onPressed: (_count == 0 || _count == 3 || _count == 6 || _count == 9) ? () => setState(() => _count = _count + 1) : () => setState(() => _count = 0),
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
                      onPressed: (_count == 1 || _count == 4 || _count == 7) ? () => setState(() => _count = _count + 2) : () => setState(() => _count = 0),
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
                      onPressed: () => setState(() => _count = 0),
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
                child: _count == 1 ? Image.asset('assets/images/game/5/b2.jpg')
                    : _count == 3 ? Image.asset('assets/images/game/5/b3.jpg')
                    : _count == 4 ? Image.asset('assets/images/game/5/b4.jpg')
                    : _count == 6 ? Image.asset('assets/images/game/5/b5.jpg')
                    : _count == 7 ? Image.asset('assets/images/game/5/b6.jpg')
                    : _count == 9 ? Image.asset('assets/images/game/5/b7.jpg')
                    : _count == 10 ? Image.asset('assets/images/game/5/b8.jpg')
                    : Image.asset('assets/images/game/5/b1.jpg')
            ),
            Container(
              width: 500,
              height: 50,
            ),
            _count == 10
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
                              context, MaterialPageRoute(builder: (_) => LevelSix()));
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