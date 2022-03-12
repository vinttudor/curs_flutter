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

  final List<int> values = <int>[0, 5, 2, 3, 6, 7, 8];
  final List<String> texts = <String>['Andrei', 'Dani', 'Cosmin', 'Petru', 'Mihai', 'Matei', 'Victor'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          DropdownButton<int>(
            value: index,
            onChanged: (int? value) {
              print('here $value');

              setState(() {
                index = value;
              });
            },
            hint: Text('Press here'),
            // items: List.generate(
            //   values.length,
            //   (int index) {
            //     final int value = values[index];
            //     final String text = texts[index];
            //
            //     return DropdownMenuItem(
            //       value: value,
            //       child: Text(text),
            //     );
            //   },
            // ),
            items: texts.map((String value) {
              return DropdownMenuItem(
                value: texts.indexOf(value),
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
