import 'package:flutter/material.dart';
import 'package:lingofy/text_screen.dart';

class LevelPage extends StatefulWidget {
  final String language;
  final String level;

  const LevelPage({Key? key, required this.language, required this.level}) : super(key: key);


  @override
  _LevelPageState createState() => _LevelPageState();
}

class _LevelPageState extends State<LevelPage> {
  final Map<String, Map<String, String>> levelLabels = {
    'English': {
      'Beginner': 'Beginner',
      'Intermediate': 'Intermediate',
      'Advanced': 'Advanced',
    },
    'Italiano': {
      'Beginner': 'Principiante',
      'Intermediate': 'Intermedio',
      'Advanced': 'Avanzato',
    },
    '中文': {
      'Beginner': '初学者',
      'Intermediate': '中级',
      'Advanced': '高级',
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${widget.language} Levels')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LevelPage(
                    language: widget.language,
                    level: 'Beginner',
                  ),
                ),
              );

              // TODO: Add code to navigate to the StoryPage for the beginner level
            },
            child: Text(levelLabels[widget.language]!['Beginner']!),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LevelPage(
                    language: widget.language,
                    level: 'Intermediate',
                  ),
                ),
              );

              // TODO: Add code to navigate to the StoryPage for the intermediate level
            },
            child: Text(levelLabels[widget.language]!['Intermediate']!),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LevelPage(
                    language: widget.language,
                    level: 'Advanced',
                  ),
                ),
              );

              // TODO: Add code to navigate to the StoryPage for the advanced level
            },
            child: Text(levelLabels[widget.language]!['Advanced']!)
            ,
          ),
        ],
      ),
    );
  }
}
