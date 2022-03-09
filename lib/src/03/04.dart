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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // body: ListView(
      //   children: movies.map((Movie movie) {
      //     return Column(
      //       crossAxisAlignment: CrossAxisAlignment.stretch,
      //       children: <Widget>[
      //         ListTile(
      //           title: Text(movie.title),
      //           subtitle: Text(movie.description),
      //           trailing: Text('${movie.rating}'),
      //         ),
      //         Image.network(
      //           movie.poster,
      //           fit: BoxFit.cover,
      //           height: 300.0,
      //         ),
      //       ],
      //     );
      //   }).toList(),
      // ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) {
          final Movie movie = movies[index];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ListTile(
                title: Text(movie.title),
                subtitle: Text(movie.description),
                trailing: Text('${movie.rating}'),
              ),
              Image.network(
                movie.poster,
                fit: BoxFit.cover,
                height: 300.0,
              ),
            ],
          );
        },
      ),
    );
  }
}

class Movie {
  const Movie({required this.title, required this.rating, required this.poster, required this.description});

  final String title;
  final double rating;
  final String poster;
  final String description;
}

const List<Movie> movies = <Movie>[
  Movie(
      title: 'Iron Man',
      rating: 7.9,
      poster:
          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSzFXKSHWb3-5LAMWLxGAB5HzqsefGX4eYINaSHLd9JDNRu-LiM',
      description:
          'After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.'),
  Movie(
      title: 'Captain America',
      rating: 6.9,
      poster: 'https://upload.wikimedia.org/wikipedia/en/6/6b/Chris_Evans_as_Steve_Rogers_Captain_America.jpg',
      description: 'Steve Rogers, a rejected military soldier, transforms into Captain America.'),
  Movie(
      title: 'Miami Bici',
      rating: 5,
      poster:
          'https://m.media-amazon.com/images/M/MV5BYTgyMjdiZDAtOGRmNS00NTg2LWEzYTEtNTM0ZjM5MmI0NTVlXkEyXkFqcGdeQXVyMTEyNzg0Njkw._V1_FMjpg_UX1000_.jpg',
      description: 'Miami Bici is the story of Ion and Ilie, two young people from a small dark city in Romania'),
  Movie(
      title: 'Dune',
      rating: 8.1,
      poster:
          'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQPqS6UaUbAFXbexufzQLa9PrCxjjw5MFTsEjsDC0ppVOhBcrmw',
      description: 'Feature adaptation of Frank Herbert\'s science fiction novel'),
];
