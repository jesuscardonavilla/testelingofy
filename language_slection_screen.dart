import 'package:flutter/material.dart';

import 'level_selection_screen.dart';

class LanguageSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Language'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Español'),
          onPressed: () {
            onPressed: () {
              _navigateToLevelSelectionScreen(context);
            };
          },
        ),
      ),
    );
  }
}

void _navigateToLevelSelectionScreen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LevelSelectionScreen()),
  );
}
