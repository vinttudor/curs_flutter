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
    //return WidgetsApp( //peste android si ios
    //return CupertinoApp( //pentro ios
    return MaterialApp(
      //pentru android
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Serus!'),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.star),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.ac_unit),
            ),
          ],
        ),
        drawer: Drawer(
          child: Center(
            child: Text('Salutare tuturor!'),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('Usor 1'),
            const Text('Usor 2'),
            Image.network(
                'https://ideipentruvacanta.ro/wp-content/uploads/2019/03/gardens-costa-rica-arenal-volcano-in-costa-rica-hero.jpg'),
            Center(
              child: Column(
                children: <Widget>[
                  TextButton(
                    onPressed: () {},
                    child: Text('Press me!'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Elevated'),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.home),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('printez ceva');
          }, //functie anonima
        ),
      ),
    );
  }
}

// definitia functiei
// [return type] [name][params]
