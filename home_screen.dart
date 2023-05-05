import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String language;
  final String difficulty;

  const HomeScreen({Key? key, required this.language, required this.difficulty})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Languify'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Selected language: $language',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Selected difficulty: $difficulty',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
