import 'package:flutter/material.dart';
import 'package:my_app/style.dart';
import 'Home/home.dart';
import 'register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: Container(
                    width: 300,
                    height: 240,
                    child: Image.asset('assets/images/orcalearns_logo.jpeg')),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(266.0, 0.0, 15.0, 40.0),
              child: TextButton(
              onPressed: () {
                //TODO: MAKE FORGOT PASSWORD SCREEN
              },
              child: Text(
                'Forgot Password?',
                style: ForgotPasswordTextStyle,
              ),
            ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Home()));
                },
                child: Text(
                  'Login',
                  style: LoginButtonTextStyle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(76.0, 20.0, 66.0, 0.0),
              child: Row(
                children: <Widget> [
                Text(
                  "Don't have an account? ",
                  style: BlackBodyTextStyle,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Register()));
                  },
                  child: Text(
                    "Sign up",
                    style: BlueBodyTextStyle,
                  ),
                )],
              ),
            ),
          ],
        ),
      ),
    );
  }
}