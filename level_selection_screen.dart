import 'package:flutter/material.dart';
import 'package:teste/story_screen.dart';


class LevelSelectionScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Level'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => StoryScreen(
                      language: 'Español',
                      level: 'Principiante',
                    )),
              );
            },
            child: Text('Principiante'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => StoryScreen(
                      language: 'Español',
                      level: 'Intermedio',
                    )),
              );
            },
            child: Text('Intermedio'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => StoryScreen(
                      language: 'Español',
                      level: 'Avanzado'
                    )),
              );
            },
            child: Text('Avanzado'),
          ),
        ],
      ),
    );
  }
}

