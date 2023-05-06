import 'package:flutter/material.dart';
import 'package:lingofy/level_selection_screen.dart';

class LanguageSelectionScreen extends StatefulWidget {
  final List<String> languages;

  const LanguageSelectionScreen({Key? key, required this.languages}) : super(key: key);

  @override
  _LanguageSelectionScreenState createState() => _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  String _selectedLanguage = '';

  void _handleLanguageChange(String language) {
    setState(() {
      _selectedLanguage = language;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Select a language'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              ElevatedButton(
              onPressed: () {
        _handleLanguageChange('English');
        Navigator.push(
        context,
        MaterialPageRoute(
        builder: (context) => LevelPage(
        language: 'English',
        level: widget.languages[0],
        ),
        ),
        );
        },
          child: Text('English'),
        ),
        ElevatedButton(
          onPressed: () {
            _handleLanguageChange('Español');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LevelPage(
                  language: 'Español',
                  level: widget.languages[0],
                ),
              ),
            );
          },
          child: Text('Español'),
        ),
        ElevatedButton(
          onPressed: () {
            _handleLanguageChange('Français');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LevelPage(
                  language: 'Français',
                  level: widget.languages[0],
                ),
              ),
            );
          },
          child: Text('Français'),
        ),
        ElevatedButton(
          onPressed: () {
            _handleLanguageChange('Deutsch');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LevelPage(
                  language: 'Deutsch',
                  level: widget.languages[0],
                ),
              ),
            );
          },
          child: Text('Deutsch'),
        ),
        ElevatedButton(
          onPressed: () {
            _handleLanguageChange('中文');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LevelPage(
                  language: '中文',
                  level: widget.languages[0],
                ),
              ),
            );
          },
          child: Text('中文'),
        ),
        ElevatedButton(
          onPressed: () {
            _handleLanguageChange('日本語');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LevelPage(
                  language: '日本語',
                  level: widget.languages[0],
                ),
              ),
            );
          },
          child: Text('日本語'),
        ),
        ElevatedButton(
          onPressed: () {
            _handleLanguageChange('русский');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LevelPage(
                  language: 'русский',
                  level: widget.languages[0],
                ),
              ),
            );
          },
          child: Text('русский'),
        ),
      ElevatedButton(
        onPressed: () {
          _handleLanguageChange('한국어');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LevelPage(
                language: '한국어',
                level: widget.languages[0],
              ),
            ),
          );
        },
        child: Text('한국어'),
      ),
    ];
  }
}
