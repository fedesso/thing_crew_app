import 'dart:math';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:english_words/english_words.dart';

import 'screens/home.dart';
import 'widgets/uni_button.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // '_' denotes private variable
//  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    Widget titleRow = Container(
      padding: const EdgeInsets.all(32),
      child: Row(  
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Outpost #31 Portal', textAlign: TextAlign.center, 
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
        ],
      )
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonRow = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buttonColumn(color, Icons.arrow_left, 'Prior Day'),
          _buttonColumn(color, Icons.accessibility, 'Crew Status'),
          _buttonColumn(color, Icons.arrow_right, 'Next Day'),
        ],
      ),
    );

    return MaterialApp(
        title: 'The Thing Timeline App',
        home: Scaffold(
            appBar: AppBar(
              title: Text('The Thing Timeline App'),
            ),
            body: ListView(children: 
            [
              Image.asset(
                'lib/images/thingpromo.jpg',
                width: 600,
                height: 320,
                fit: BoxFit.fitWidth,
              ),
              titleRow,
              buttonRow,
            ]
          )
        )
      );
  }

  Column _buttonColumn(Color color, IconData icon, String label) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ]);
  }
}
