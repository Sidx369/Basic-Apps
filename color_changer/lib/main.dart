import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var colors = [
    Colors.teal,
    Colors.red,
    Colors.yellow,
    Colors.black,
    Colors.white,
    Colors.purple,
    Colors.pink,
    Colors.green,
    Colors.orange,
    Colors.amber,
    Colors.blue[900],
    Colors.grey,
    Colors.blue
  ];

  var currentColor = Colors.white;
  var currentButtonColor = Colors.black;

  Timer _timer;
  int _start = 10;
  bool isEnabled = false;

  void startTimer() {
    isEnabled = true;
    const onSec = const Duration(seconds: 1);
    _timer = Timer.periodic(
      onSec,
      (timer) => setState(
        () {
          if (_start < 1) {
            _start = 10;
            startTimer();
          } 
          else {
            _start = _start - 1;
            changeColor(_start);
          }
        },
      ),
    );
  }

  int index;
  Color colorrightNow;
  void changeColor(int _start) {
    setState(() {
      currentColor = colors[_start];
    });
  }

  void changeBackGround() {
    int random = Random().nextInt(colors.length);
    int randomButtonColor = Random().nextInt(colors.length);
    setState(() {
      currentColor = colors[random];
      currentButtonColor = colors[randomButtonColor];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Color Changer",
          ),
        ),
        body: Container(
          color: currentColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [
                RaisedButton(
                  color: currentButtonColor,
                  child:
                      Text("Click to Change", style: TextStyle(color: Colors.white)),
                  padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                  onPressed: changeBackGround,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                  ),
                ),
              ], mainAxisAlignment: MainAxisAlignment.center),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    color: currentButtonColor,
                    child: Text("Auto Change",
                        style: TextStyle(color: Colors.white)),
                    padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                    onPressed: () {
                      isEnabled ? null: startTimer(); 
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        30,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

void handleClick(String value) {
  switch (value) {
    case 'logout':
      print("logging");
      break;
    case 'setting':
      print('breaking');
      break;
  }
}
