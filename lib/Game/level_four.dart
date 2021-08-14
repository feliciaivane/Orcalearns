import 'package:flutter/material.dart';
import 'package:my_app/style.dart';
import 'package:my_app/Game/level_five.dart';

class LevelFour extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LevelFourState();
  }
}

class _LevelFourState extends State<LevelFour> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Left Turn"),
      ),
      body: Container(
        height: 668,
        width: 500,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
              child: Text("We have already learnt how to make Orca turn right, so now we will learn how to make Orca turn left. Lift up your left and right hand again: Orca should now look at your left hand when it turns left, like this:"),
            ),
            Container(
                width: 500,
                height: 400,
                child: Image.asset('assets/images/game/turn_left.jpg')
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 15.0),
              child: Text("Use this to complete this level!"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(45.0, 40.0, 0.0, 0.0),
              child: Text("Help Orca reach the finish line!", style: AchievementsTitleTextStyle,),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(130.0, 10.0, 0.0, 20.0),
              child: Text("Hint: Opposite of Level 2", style: BlackSmallTextStyle,),
            ),
            Container(
                width: 500,
                height: 400,
                child: _count == 1 ? Image.asset('assets/images/game/4/4_2.jpg')
                    : _count == 3 ? Image.asset('assets/images/game/4/4_3.jpg')
                    : _count == 4 ? Image.asset('assets/images/game/4/4_4.jpg')
                    : Image.asset('assets/images/game/4/4_1.jpg')
            ),
            Container(
              width: 500,
              height: 25,
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
                        onPressed: (_count == 0 || _count == 3) ? () => setState(() => _count = _count + 1) : () => setState(() => _count = 0),
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
                      onPressed: _count == 1 ? () => setState(() => _count = _count + 2) : () => setState(() => _count = 0),
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
              height: 25,
            ),
            Container(
                width: 400,
                height: 320,
                child: _count == 1 ? Image.asset('assets/images/game/4/b2.jpg')
                    : _count == 3 ? Image.asset('assets/images/game/4/b3.jpg')
                    : _count == 4 ? Image.asset('assets/images/game/4/b4.jpg')
                    : Image.asset('assets/images/game/4/b1.jpg')
            ),
            Container(
              width: 500,
              height: 25,
            ),
            _count == 4
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
                              context, MaterialPageRoute(builder: (_) => LevelFive()));
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