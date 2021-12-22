import 'package:flutter/material.dart';
import 'package:check_internet/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Check Internet',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const Home(),
    );
  }
}
