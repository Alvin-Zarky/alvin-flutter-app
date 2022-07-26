import "package:flutter/material.dart";
import "package:english_words/english_words.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.purple), home: RandomWord());
  }
}

// ignore: use_key_in_widget_constructors
class RandomWord extends StatefulWidget {
  @override
  RandomWordState createState() => RandomWordState();
}

class RandomWordState extends State<RandomWord> {
  final wordPair = WordPair.random();

  Widget _buildList() {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          height: 50,
          color: const Color.fromARGB(255, 95, 182, 33),
          child: Center(child: Text(wordPair.asPascalCase)),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: Center(child: Text(wordPair.asPascalCase)),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: Center(child: Text(wordPair.asPascalCase)),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Auto Generate WordPair")),
      body: _buildList(),
    );
  }
}
