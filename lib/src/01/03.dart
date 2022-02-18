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

// variable: [type][name][=][value]
// function: [return type][parameters]
class _HomePageState extends State<HomePage> {
  String name = 'Dani'; // 1. definim var care se schimba in clasa state
  int pressed = 0;
  bool? checked;
  int radioChecked = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Text(name),
          Text('sdsdsds: $pressed'), //Text(count.toString()),
          Checkbox(
            value: checked,
            tristate: true,
            onChanged: (bool? value) {
              setState(() {
                checked = value;
              });
            },
          ),
          Radio(
            value: 1,
            groupValue: radioChecked,
            onChanged: (int? value) {
              setState(() {
                radioChecked = value!;
              });
            },
          ),
          Radio(
            value: 2,
            groupValue: radioChecked,
            onChanged: (int? value) {
              setState(() {
                radioChecked = value!;
              });
            },
          ),
          Radio(
            value: 3,
            groupValue: radioChecked,
            onChanged: (int? value) {
              setState(() {
                radioChecked = value!;
              });
            },
          ),
        ],
      ), // 2. folosim var in functia build pt a crea UI
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            pressed++;
            if (pressed.isEven) {
              // if (count % 2 == 0) {
              name = 'Dani'; // 3. modificam var in setState()
            } else {
              name = 'Razvan';
            }
          });
        },
      ),
    );
  }
}
