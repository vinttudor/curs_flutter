// ignore_for_file: file_names
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
  int? index = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          DropdownButton<int>(
            items: <DropdownMenuItem<int>>[
              DropdownMenuItem<int>(
                value: 0,
                child: Text('Andrei'),
              ),
              DropdownMenuItem<int>(
                value: 1,
                child: Text('Dani'),
              ),
              DropdownMenuItem<int>(
                value: 2,
                child: Text('Cosmin'),
              ),
              DropdownMenuItem<int>(
                value: 3,
                child: Text('Petru'),
              ),
            ],
            hint: Text('Select ceva'),
            value: index,
            onChanged: (int? value) {
              //print('here $value');
              setState(() {
                index = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
