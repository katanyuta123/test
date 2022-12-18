import 'package:flutter/material.dart';
import 'package:hello_flutter1/game.dart';

void main() {
  runApp(const GamePage());
}

class GamePage extends StatelessWidget {
  const GamePage({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const GamePage(),
    );
  }
}

