import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyCrewPage extends StatefulWidget {
  MyCrewPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyCrewPageState createState() => _MyCrewPageState();
}

class _MyCrewPageState extends State<MyCrewPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Test',
            ),
          ],
        ),
      ),
    );
  }
}
