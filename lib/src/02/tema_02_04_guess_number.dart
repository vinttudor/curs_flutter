// ignore_for_file: file_names
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double containerResultTop = 0.0;
  double containerResultBottom = 0.0;
  String containerResultTextLine1 = '';
  String containerResultTextLine2 = '';
  int number = Random().nextInt(99) + 1;
  String textButtonGuessReset = 'Guess';

  final TextEditingController tryNumbercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Guess my number'),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Text(
              'I\'m thinking of a number between 1 and 100.',
              style: TextStyle(
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
            padding: EdgeInsets.all(12.0),
            alignment: Alignment.center,
          ),
          Container(
            child: Text(
              'It\'s your tourn to guess my number!',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            alignment: Alignment.center,
          ),
          Container(
            padding: EdgeInsets.only(
              top: containerResultTop,
              bottom: containerResultBottom,
            ),
            child: Container(
              padding: EdgeInsets.only(
                top: 15.0,
                bottom: 15.0,
              ),
              child: Column(
                children: [
                  Text(
                    containerResultTextLine1,
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    containerResultTextLine2,
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                ],
              ),
            ),
            alignment: Alignment.center,
          ),
          Container(
            margin: const EdgeInsets.all(16.0),
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  'Try a number!',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(
                    start: 22.0,
                    end: 22.0,
                  ),
                  child: TextField(
                    controller: tryNumbercontroller,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (textButtonGuessReset == 'Reset') {
                          textButtonGuessReset = 'Guess';
                          tryNumbercontroller.clear();
                          number = Random().nextInt(100) + 1;

                          containerResultTextLine1 = '';
                          containerResultTextLine2 = '';

                          containerResultTop = 0.0;
                          containerResultBottom = 0.0;
                        } else {
                          int numberController =
                              tryNumbercontroller.text.isEmpty
                                  ? 0
                                  : int.parse(tryNumbercontroller.text);
                          containerResultTop = 5.0;
                          containerResultBottom = 5.0;
                          if (numberController < number) {
                            containerResultTextLine1 =
                                'You tried $numberController';
                            containerResultTextLine2 = 'Try higher';
                          } else if (numberController > number) {
                            containerResultTextLine1 =
                                'You tried $numberController';
                            containerResultTextLine2 = 'Try lower';
                          } else {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('You guessed right'),
                                  content: Text('It was $numberController'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          tryNumbercontroller.clear();
                                          containerResultTextLine1 = '';
                                          containerResultTextLine2 = '';

                                          containerResultTop = 0.0;
                                          containerResultBottom = 0.0;
                                        });
                                        number = Random().nextInt(100) + 1;
                                        Navigator.pop(context, true);
                                      },
                                      child: Text('Try again'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          tryNumbercontroller.clear();
                                          textButtonGuessReset = 'Reset';
                                        });
                                        Navigator.pop(context, true);
                                      },
                                      child: Text('OK'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        }
                      });
                    },
                    child: Container(
                      child: Text(
                        textButtonGuessReset,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[350],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// de optimizat candva:
// unele chestii se duplica pe aici si ar trebui pus codul repetat in functii, la fel si codul cu dialogul
