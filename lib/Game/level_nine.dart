import 'package:flutter/material.dart';
import 'package:my_app/style.dart';
import 'package:my_app/Game/menu.dart';

class LevelNine extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LevelNineState();
  }
}

class _LevelNineState extends State<LevelNine> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Zig-zag"),
      ),
      body: Container(
        height: 668,
        width: 500,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(80.0, 20.0, 0.0, 0.0),
              child: Text("Help Orca move zig-zag!", style: AchievementsTitleTextStyle,),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(130.0, 10.0, 0.0, 0.0),
              child: Text("Hint: Alternate the turns", style: BlackSmallTextStyle,),
            ),
            Container(
                width: 500,
                height: 400,
                child: _count == 1 ? Image.asset('assets/images/game/9/9_2.jpg')
                    : _count == 3 ? Image.asset('assets/images/game/9/9_3.jpg')
                    : _count == 4 ? Image.asset('assets/images/game/9/9_4.jpg')
                    : _count == 7 ? Image.asset('assets/images/game/9/9_5.jpg')
                    : _count == 8 ? Image.asset('assets/images/game/9/9_6.jpg')
                    : _count == 10 ? Image.asset('assets/images/game/9/9_7.jpg')
                    : _count == 11 ? Image.asset('assets/images/game/9/9_8.jpg')
                    : Image.asset('assets/images/game/9/9_1.jpg')
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 25.0, 0.0),
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.blue),
                    child: TextButton(
                      child: Text(
                        "Move Forward", style: WhiteBodyTextStyle,
                      ),
                      onPressed: (_count == 0 || _count == 3 || _count == 7 || _count == 10) ? () => setState(() => _count = _count + 1) : () => setState(() => _count = 0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 0.0, 20.0, 0.0),
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
                      onPressed: (_count == 1 || _count == 8) ? () => setState(() => _count = _count + 2) : () => setState(() => _count = 0),
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
                child: _count == 1 ? Image.asset('assets/images/game/9/b2.jpg')
                    : _count == 3 ? Image.asset('assets/images/game/9/b3.jpg')
                    : _count == 4 ? Image.asset('assets/images/game/9/b4.jpg')
                    : _count == 7 ? Image.asset('assets/images/game/9/b5.jpg')
                    : _count == 8 ? Image.asset('assets/images/game/9/b6.jpg')
                    : _count == 10 ? Image.asset('assets/images/game/9/b7.jpg')
                    : _count == 11 ? Image.asset('assets/images/game/9/b8.jpg')
                    : Image.asset('assets/images/game/9/b1.jpg')
            ),
            Container(
              width: 500,
              height: 35,
            ),
            _count == 11
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
                          Navigator.pop(context);
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