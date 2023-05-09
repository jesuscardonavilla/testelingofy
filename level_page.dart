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
  final Map<String, Map<String, Map<String, String>>> levelLabels = {
    'English': {
      'Beginner': {
        'label': 'Beginner',
        'story_1': 'assets/data/english/beginner/story_1.json',
        'story_2': 'assets/data/english/beginner/story_2.json',
      },
      'Intermediate': {
        'label': 'Intermediate',
        'story_1': 'assets/data/english/intermediate/story_1.json',
        'story_2': 'assets/data/english/intermediate/story_2.json',
      },
      'Advanced': {
        'label': 'Advanced',
        'story_1': 'assets/data/english/advanced/story_1.json',
        'story_2': 'assets/data/english/advanced/story_2.json',
      },
    },
    'Italiano': {
      'Beginner': {
        'label': 'Principiante',
        'story_1': 'assets/data/italiano/beginner/story_1.json',
        'story_2': 'assets/data/italiano/beginner/story_2.json',
      },
      'Intermediate': {
        'label': 'Intermedio',
        'story_1': 'assets/data/italiano/intermediate/story_1.json',
        'story_2': 'assets/data/italiano/intermediate/story_2.json',
      },
      'Advanced': {
        'label': 'Avanzato',
        'story_1': 'assets/data/italiano/advanced/story_1.json',
        'story_2': 'assets/data/italiano/advanced/story_2.json',
      },
    },
    '中文': {
      'Beginner': {
        'label': '初学者',
        'story_1': 'assets/data/chinese/beginner/story_1.json',
        'story_2': 'assets/data/chinese/beginner/story_2.json',
      },
      'Intermediate': {
        'label': '中级',
        'story_1': 'assets/data/chinese/intermediate/story_1.json',
        'story_2': 'assets/data/chinese/intermediate/story_2.json',
      },
      'Advanced': {
        'label': '高级',
        'story_1': 'assets/data/chinese/advanced/story_1.json',
        'story_2': 'assets/data/chinese/advanced/story_2.json',
      },
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
                    storyPath: levelLabels[widget.language]!['Beginner']!['story_1']!,
                    nextStory: levelLabels[widget.language]!['Beginner']!['story_2']!,
                    previousStory: ''
                  ),
                ),
              );
            },
            child: Text(levelLabels[widget.language]!['Beginner']!['label']!),
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
                    storyPath: levelLabels[widget.language]!['Intermediate']!['story_1']!,
                    nextStory: levelLabels[widget.language]!['Intermediate']!['story_2']!,
                    previousStory: levelLabels[widget.language]!['Intermediate']!['story_0']!,
                  ),
                ),
              );
            },
            child: Text(levelLabels[widget.language]!['Intermediate']!['label']!),
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
                    storyPath: levelLabels[widget.language]!['Advanced']!['story_1']!,
                    nextStory: levelLabels[widget.language]!['Advanced']!['story_2']!,
                    previousStory: levelLabels[widget.language]!['Advanced']!['story_0']!,
                  ),
                ),
              );
            },
            child: Text(levelLabels[widget.language]!['Advanced']!['label']!),
          ),
        ],
      ),
    );
  }
}

           
