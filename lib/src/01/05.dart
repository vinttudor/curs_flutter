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
  final TextEditingController controller = TextEditingController();

  String? errorText;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsetsDirectional.all(16.0),
            child: TextField(
              controller: controller,
              keyboardType: TextInputType.numberWithOptions(decimal: true), //TextInputType.emailAddress,
              onChanged: (String? value) {
                final String value = controller.text;
                final double? doubleValue = double.tryParse(value);
                //print('doubleValue: ${doubleValue?.toStringAsFixed(2)}');

                setState(() {
                  if (doubleValue == null) {
                    errorText = 'This is not a number';
                  } else {
                    errorText = null;
                  }
                });
              },
              decoration: InputDecoration(
                hintText: 'email',
                errorText: errorText,
                suffix: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    controller.clear();
                  },
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
            },
          )
        ],
      ),
    );
  }
}
