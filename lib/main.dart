// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'style.dart';
import 'Login.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(new App());
}

class App extends StatelessWidget {
  @override Widget build(BuildContext context) {
    return MaterialApp(
        home: Login(),
        theme: ThemeData(
            appBarTheme: AppBarTheme(
              textTheme: TextTheme(headline6: AppBarTextStyle),
            ),
            textTheme: TextTheme(
              headline6: TitleTextStyle,
              bodyText2: BlackBodyTextStyle,
            )
        ));
  }
}