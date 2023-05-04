import 'package:flutter/material.dart';

import 'language_slection_screen.dart';


class HomeScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Short Stories'),
    ),
    body: ElevatedButton(
      child: Text('Select Language'),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LanguageSelectionScreen()),
        );
      },
    ),
  );
}
}

