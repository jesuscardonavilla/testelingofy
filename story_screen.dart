import 'package:flutter/material.dart';

class StoryScreen extends StatefulWidget {
  final String language;
  final int level;
  final List<String> stories;

  StoryScreen({required this.language, required this.level, required this.stories});

  @override
  _StoryScreenState createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.language} - ${widget.level}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.stories[_currentIndex],
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (_currentIndex > 0)
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _currentIndex--;
                        });
                      },
                      child: Text('Anterior'),
                    ),
                  if (_currentIndex < widget.stories.length - 1)
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _currentIndex++;
                        });
                      },
                      child: Text('Siguiente'),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
