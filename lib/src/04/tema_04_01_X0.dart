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

const initialColor = 'white';

class _HomePageState extends State<HomePage> {
  String lastMoveColor = initialColor;
  bool isVisible = false;
  String winner = initialColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Center(
          child: Text(
            'tic-tac-toe',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
            ),
            itemCount: rowGrid.length,
            itemBuilder: (BuildContext ctx, index) {
              return GestureDetector(
                onTap: () {
                  if (isVisible) {
                    return;
                  }

                  setState(() {
                    for (var i = 0; i < rowGrid.length; i++) {
                      if (i == index && rowGrid[i].color == initialColor) {
                        rowGrid[i].color = lastMoveColor == 'red' ? 'green' : 'red';
                        lastMoveColor = rowGrid[i].color;

                        return;
                      }
                    }
                  });

                  setWinner();
                  isVisible = winner != initialColor || winner == 'draw';

                  if (winner != initialColor && winner != 'draw') {
                    for (var i = 0; i < rowGrid.length; i++) {
                      if (rowGrid[i].isWinner == false) {
                        rowGrid[i].color = initialColor;
                      }
                    }
                  }
                },
                child: AnimatedContainer(
                  duration: const Duration(microseconds: 300),
                  decoration: BoxDecoration(
                    color: rowGrid[index].color == 'red'
                        ? Colors.red
                        : (rowGrid[index].color == 'green' ? Colors.green : Colors.white),
                    border: Border.all(),
                  ),
                ),
              );
            },
          ),
          Visibility(
            visible: isVisible,
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[350],
                ),
                onPressed: () {
                  setState(() {
                    isVisible = false;
                    for (var i = 0; i < rowGrid.length; i++) {
                      rowGrid[i].color = initialColor;
                      rowGrid[i].isWinner = false;
                      winner = initialColor;
                    }
                  });
                },
                child: Text(
                  'Play again!',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void checkWinner(int row1, int row2, int row3) {
    if (rowGrid[row1].color != initialColor &&
        rowGrid[row1].color == rowGrid[row2].color &&
        rowGrid[row2].color == rowGrid[row3].color) {
      winner = rowGrid[0].color;
      rowGrid[row1].isWinner = true;
      rowGrid[row2].isWinner = true;
      rowGrid[row3].isWinner = true;
    }
  }

  void setWinner() {
    checkWinner(0, 1, 2);
    checkWinner(3, 4, 5);
    checkWinner(6, 7, 8);
    checkWinner(0, 3, 6);
    checkWinner(0, 3, 6);
    checkWinner(1, 4, 7);
    checkWinner(2, 5, 8);
    checkWinner(0, 4, 8);
    checkWinner(2, 4, 6);

    int all = 0;
    for (var i = 0; i < rowGrid.length; i++) {
      if (rowGrid[i].color != initialColor) {
        all++;
      }
    }
    if (all == rowGrid.length) {
      winner = 'draw';
    }
  }
}

class RowGrid {
  RowGrid({required this.color, required this.isWinner});

  String color;
  bool isWinner;
}

List<RowGrid> rowGrid = <RowGrid>[
  RowGrid(color: initialColor, isWinner: false),
  RowGrid(color: initialColor, isWinner: false),
  RowGrid(color: initialColor, isWinner: false),
  RowGrid(color: initialColor, isWinner: false),
  RowGrid(color: initialColor, isWinner: false),
  RowGrid(color: initialColor, isWinner: false),
  RowGrid(color: initialColor, isWinner: false),
  RowGrid(color: initialColor, isWinner: false),
  RowGrid(color: initialColor, isWinner: false),
];
