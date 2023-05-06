import 'package:flutter/material.dart';
import 'package:lingofy/home_screen.dart';
import 'package:lingofy/language_selection_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> languages = ['English', 'Español', 'Français', 'Deutsch', 'Italiano', 'Português', '中文', '日本語'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lingofy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LanguageSelectionScreen(),
    );
  }
}


