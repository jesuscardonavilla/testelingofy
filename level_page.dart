import 'package:flutter/material.dart';
import 'package:lingofy_again/story_page.dart';

class LevelPage extends StatefulWidget {
  final String language;
  final String? difficulty;

  const LevelPage({
    Key? key,
    required this.language,
    this.difficulty,
  }) : super(key: key);

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
                  builder: (context) => StoryPage(
                    language: widget.language,
                    level: 'Beginner',
                    difficulty: 'Easy',
                    storyPath: 'assets/data/english/beginner/story_1.json',
                    nextStory: 'assets/data/english/beginner/story_2.json',
                    previousStory: '',
                  ),
                ),
              );
            },
            child: Text(levelLabels[widget.language]!['Beginner']!),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StoryPage(
                    language: widget.language,
                    level: 'Intermediate',
                    difficulty: 'Medium',
                    storyPath: 'assets/stories/english/intermediate/story_1.txt',
                    nextStory: 'assets/stories/english/intermediate/story_2.txt',
                    previousStory: 'assets/stories/english/intermediate/story_0.txt',
                  ),
                ),
              );
            },
            child: Text(levelLabels[widget.language]!['Intermediate']!),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StoryPage(
                    language: widget.language,
                    level: 'Advanced',
                    difficulty: 'Hard',
                    storyPath: 'assets/stories/english/advanced/story_1.txt',
                    nextStory: 'assets/stories/english/advanced/story_2.txt',
                    previousStory: 'assets/stories/english/advanced/story_0.txt',
                  ),
                ),
              );
            },
            child: Text(levelLabels[widget.language]!['Advanced']!),
          ),
        ],
      ),
    );
  }
}

