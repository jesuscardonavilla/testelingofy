import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class TextScreen extends StatefulWidget {
  final String language;
  final String difficulty;
  final int storyIndex;

  TextScreen({required this.language, required this.difficulty, required this.storyIndex});

  @override
  _TextScreenState createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  late List<dynamic> _storyList;
  late int _currentIndex;
  late bool _isLastPage;

  @override
  void initState() {
    super.initState();
    _loadStoryList();
    _currentIndex = 0;
    _isLastPage = false;
  }

  Future<void> _loadStoryList() async {
    String path = 'assets/${widget.language}/${widget.difficulty}/story_${widget.storyIndex}.json';
    String jsonString = await rootBundle.loadString(path);
    setState(() {
      _storyList = json.decode(jsonString);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Story ${widget.storyIndex}'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _storyList[_currentIndex],
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 24.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _currentIndex == 0 ? null : () => _changePage(-1),
                    child: Text('Previous'),
                  ),
                  SizedBox(width: 24.0),
                  ElevatedButton(
                    onPressed: _isLastPage ? () => _finish() : () => _changePage(1),
                    child: _isLastPage ? Text('Finish') : Text('Next'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _changePage(int delta) {
    setState(() {
      _currentIndex += delta;
      _isLastPage = _currentIndex == _storyList.length - 1;
    });
  }

  void _finish() {
    Navigator.popUntil(context, ModalRoute.withName('/'));
  }
}
