import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/rendering.dart';

void main() => runApp(
      MaterialApp(home: MyApp()),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Rainbow'),
        ),
        body: Picker(),
      ),
    );
  }
}

class Picker extends StatefulWidget {
  @override
  _PickerState createState() => _PickerState();
}

class _PickerState extends State<Picker> {
  List yourList = ["Hey There", "My Name is Anatolii"];
  String buttonText = "Initial Text";
  int randomIndex = 0;

  Color color =
      Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

  void _newRandomIndex() {
    setState(() {
      randomIndex = Random().nextInt(yourList.length);
      buttonText = yourList[randomIndex];
      color =
          Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: MaterialButton(
        height: 640.0,
        minWidth: double.infinity,
        onPressed: _newRandomIndex,
        child: Text(buttonText),
      ),
    );
  }
}
