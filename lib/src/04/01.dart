// ignore_for_file: file_names
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  String color = 'red';

  @override
  Widget build(BuildContext context) {
    final isRed = color == 'red';

    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
        onTap: () {
          setState(() {
            color = isRed ? 'blue' : 'red';
          });
        },
        child: AnimatedAlign(
          alignment: isRed ? AlignmentDirectional.center : AlignmentDirectional.bottomEnd,
          duration: const Duration(microseconds: 300),
          child: AnimatedContainer(
            duration: const Duration(microseconds: 300),
            curve: Curves.easeInCubic,
            width: isRed ? 400.0 : 200.0,
            height: isRed ? 400.0 : 200.0,
            decoration: BoxDecoration(
              color: isRed ? Colors.red : Colors.blue,
              borderRadius: BorderRadius.circular(isRed ? 0.0 : 16.0),
            ),
          ),
        ),
      ),
      
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       color = isRed ? 'blue' : 'red';
      //     });
      //   },
      // ),
    );
  }
}
