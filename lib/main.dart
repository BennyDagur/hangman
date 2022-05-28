import 'package:flutter/material.dart';
import 'game_screen.dart';
import 'starting_menu.dart';
import 'end_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'StartMenu',
      routes: {
        'StartMenu': (context) => StartMenu(),
        'Game': (context) => GameScreen(),
        'End': (context) => EndScreen(),
      },
        theme: ThemeData().copyWith(
          scaffoldBackgroundColor: Colors.white
        ),
    );
  }
}