import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:myapp/views/footer.dart';

class RandomWordState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _saved = new Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);
  List tabs = ['School', 'Home', 'Tv'];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Startup name Genter'),
        actions: <Widget>[
          new IconButton(icon: const Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      body: _buildSuggestions(),
      bottomNavigationBar: FooterState(),
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(new MaterialPageRoute<void>(builder: (BuildContext context) {
      final Iterable<ListTile> tiles = _saved.map((WordPair pair) {
        return new ListTile(
          title: new Text(
            pair.asPascalCase,
            style: _biggerFont,
          ),
        );
      });

      final divided = ListTile.divideTiles(
        tiles: tiles,
        context: context,
      ).toList();

      return new Scaffold(
        appBar: new AppBar(
          title: const Text('Saved Suggestions'),
        ),
        body: new ListView(
          children: divided,
        ),
      );
    }));
  }

  Widget _buildSuggestions() {
    return ListView.builder(itemBuilder: (context, i) {
      if (i.isOdd) return Divider();

      final index = i ~/ 2;
      if (index >= _suggestions.length) {
        _suggestions.addAll(generateWordPairs().take(10));
      }
      return _buildRow(_suggestions[index]);
    });
  }

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);

    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('你好'),
                content: Text('再见'),
              );
            });
      },
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordState createState() => RandomWordState();
}
