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
  final TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Number Shapes'),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Text(
              'Please input a number to see if it is square or triangular',
              style: TextStyle(
                fontSize: 21,
              ),
              textAlign: TextAlign.left,
            ),
            padding: EdgeInsets.all(12.0),
          ),
          Container(
            margin: EdgeInsetsDirectional.only(
              start: 22.0,
              end: 22.0,
            ),
            child: TextField(
              controller: numberController,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.check),
        onPressed: () {
          if (numberController.text != '') {
            int number = numberController.text.isEmpty ? 0 : int.parse(numberController.text);
            double sqrtValue = sqrt(number);
            int sqrtValueRounded = int.parse(sqrtValue.toStringAsFixed(0));
            bool isSquare = pow(sqrtValueRounded, 2) == int.parse(numberController.text);

            bool isTriangular = false;
            for (var i = 0; i <= number; i++) {
              if (pow(i, 3) == number) {
                isTriangular = true;
                break;
              }
            }

            String text = 'Number ${numberController.text} ';
            if (isSquare == false && isTriangular == false) {
              text += 'is neither SQUARE and TRIANGULAR';
            } else {
              if (isSquare && isTriangular) {
                text += 'is both SQUARE and TRIANGULAR';
              } else {
                if (isSquare) {
                  text += 'is SQUARE';
                }
                if (isTriangular) {
                  text += 'is TRIANGULAR';
                }
              }
            }

            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(numberController.text),
                  content: Text(text),
                );
              },
            );
          }
        },
      ),
    );
  }
}
