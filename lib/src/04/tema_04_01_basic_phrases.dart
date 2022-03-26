// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

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

/*
ce nu imi place aici:
  - nu am sunete google translte, pt ca nu se pot lua din request-uri, am folosit un mp3 random pt toate
  - probabil ca as vrea sa fac cumva o metoda care cicleaza cele 8 butoane, am cam mult cod, si nu-mi place asta
 */
class _HomePageState extends State<HomePage> {
  AudioPlayer audioPlayer = AudioPlayer();

  _play(String text) {
    if (text != '') {
      audioPlayer.play('https://www.onlinemictest.com/wp-content/themes/onlinemictest/sound.mp3');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            'Basic Phrases',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Center(
            child: GestureDetector(
              onTap: () {
                _play('salut');
              },
              child: SizedBox(
                width: 200.0,
                height: 110.0,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'salut',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blue,
                        Colors.red,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                _play('salut (Germana)');
              },
              child: SizedBox(
                width: 180.0,
                height: 110.0,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'salut (Germana)',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blue,
                        Colors.red,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                _play('ma numesc');
              },
              child: SizedBox(
                width: 180.0,
                height: 110.0,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'ma numesc',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blue,
                        Colors.red,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                _play('ma numesc (Germana)');
              },
              child: SizedBox(
                width: 180.0,
                height: 110.0,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'ma numesc (Germana)',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blue,
                        Colors.red,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                _play('cum esti?');
              },
              child: SizedBox(
                width: 180.0,
                height: 110.0,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'cum esti?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blue,
                        Colors.red,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                _play('cum esti? (Germana)');
              },
              child: SizedBox(
                width: 180.0,
                height: 110.0,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'cum esti? (Germana)',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blue,
                        Colors.red,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                _play('sunt bine');
              },
              child: SizedBox(
                width: 180.0,
                height: 110.0,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'sunt bine',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blue,
                        Colors.red,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                _play('ssunt bine (Germana)');
              },
              child: SizedBox(
                width: 180.0,
                height: 110.0,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'sunt bine (Germana)',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.blue,
                        Colors.red,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
