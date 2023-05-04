import 'dart:async' show Future;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class StoryScreen extends StatefulWidget {
  final String language;
  final int level;
  final int storyIndex;

  StoryScreen({required this.language, required this.level, required this.storyIndex});

  @override
  _StoryScreenState createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  String _storyText = '';

  @override
  void initState() {
    super.initState();
    _loadStoryText();
  }

  Future<void> _loadStoryText() async {
    String fileName = 'assets/${widget.language}/level${widget.level}/story${widget.storyIndex}.txt';
    String storyText = await rootBundle.loadString(fileName);
    setState(() {
      _storyText = storyText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Story ${widget.storyIndex}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            _storyText,
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
