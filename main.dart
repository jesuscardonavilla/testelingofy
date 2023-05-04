import 'package:flutter/material.dart';
import 'package:teste/home_screen.dart';
import 'package:teste/language_selection_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testelingofy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LanguageSelectionScreen(),
    );
  }
}

