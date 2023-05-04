import 'package:flutter/material.dart';
import 'package:teste/level_selection_screen.dart';

class HomeScreen extends StatelessWidget {
  final String language;

  HomeScreen({required this.language});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testelingofy'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Testelingofy!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            Text(
              'You have selected $language.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              child: Text('Select a level'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LevelSelectionScreen(language: language),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
