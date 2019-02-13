import 'package:flutter/material.dart';
import 'package:mobilefm/screens/recent_tracks.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobilefm',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RecentTracksWidget(),
    );
  }
}