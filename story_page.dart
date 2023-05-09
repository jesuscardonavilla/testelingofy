import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class StoryPage extends StatefulWidget {
  final String language;
  final String level;
  final String difficulty;
  final String storyPath;
  final String nextStory;
  final String previousStory;

  const StoryPage({
    Key? key,
    required this.language,
    required this.level,
    required this.difficulty,
    required this.storyPath,
    required this.nextStory,
    required this.previousStory,
  }) : super(key: key);

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  late List<dynamic> _story;
  late int _currentStoryIndex;
  late bool _hasPreviousStory;
  late bool _hasNextStory;

  @override
  void initState() {
    super.initState();
    _currentStoryIndex = 0;
    _loadStory();
  }

  Future<void> _loadStory() async {
    String storyContent = await rootBundle.loadString(widget.storyPath);
    setState(() {
      _story = json.decode(storyContent);
      _hasPreviousStory = widget.previousStory.isNotEmpty;
      _hasNextStory = widget.nextStory.isNotEmpty;
    });
  }

  void _goToPreviousStory() {
    if (_hasPreviousStory) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => StoryPage(
            language: widget.language,
            level: widget.level,
            difficulty: widget.difficulty,
            storyPath: widget.previousStory,
            nextStory: widget.storyPath,
            previousStory: '',
          ),
        ),
      );
    }
  }

  void _goToNextStory() {
    if (_hasNextStory) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => StoryPage(
            language: widget.language,
            level: widget.level,
            difficulty: widget.difficulty,
            storyPath: widget.nextStory,
            nextStory: '',
            previousStory: widget.storyPath,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.language} - ${widget.level} (${widget.difficulty})'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  _story[_currentStoryIndex]['text'],
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            Container(
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible: _hasPreviousStory,
                    child: ElevatedButton(
                      onPressed: _goToPreviousStory,
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Visibility(
                    visible: _hasNextStory,
                    child: ElevatedButton(
                      onPressed: _goToNextStory,
                      child: Icon(Icons.arrow_forward),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Section {
  final String title;
  final String body;

  Section({required this.title, required this.body});

  factory Section.fromJson(Map<String, dynamic> json) {
    return Section(
      title: json['title'],
      body: json['body'],
    );
  }
}
