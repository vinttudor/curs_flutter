// ignore_for_file: file_names
import 'package:flutter/material.dart';

void main() {
  runApp(
    Directionality(
      child: Align(
        alignment: AlignmentDirectional.center,
        child: Container(
          //width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Icon(
                    Icons.all_out,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.home,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.green,
                  ),
                ],
              ),
              const Text(
                'Hello world!',
                style: TextStyle(
                  color: Color(0xFF00FF00),
                  fontSize: 32.0,
                  decoration: TextDecoration.underline,
                ),
              ),
              const Text(
                'Hello world 2!',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 32.0,
                  decoration: TextDecoration.underline,
                ),
              ),
              const Text(
                'Hello world 3!',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 32.0,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ),
      textDirection: TextDirection.ltr,
    ),
  );
}
