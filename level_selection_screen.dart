import 'dart:convert';
import 'package:flutter/material.dart';
import 'story_screen.dart';

class LevelSelectionScreen extends StatefulWidget {
  final String language;
  final List<int> levels;

  LevelSelectionScreen({required this.language, required this.levels});

  @override
  _LevelSelectionScreenState createState() => _LevelSelectionScreenState();
}

class _LevelSelectionScreenState extends State<LevelSelectionScreen> {
  List<Map<String, dynamic>> stories = [];

  @override
  void initState() {
    super.initState();
    loadStories();
  }

  Future<void> loadStories() async {
    String data =
    await DefaultAssetBundle.of(context).loadString("assets/${widget.language}/stories.json");
    List<dynamic> jsonResult = json.decode(data);

    setState(() {
      stories = jsonResult.cast<Map<String, dynamic>>();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.language),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: widget.levels.length,
          itemBuilder: (BuildContext context, int index) {
            return ElevatedButton(
              child: Text("Level ${widget.levels[index]}"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StoryScreen(
                      language: widget.language,
                      level: widget.levels[index],
                      stories: stories,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
