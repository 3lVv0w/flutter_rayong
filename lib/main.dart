import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(title: 'Flutter Rayong!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _greeting = 'hi';
  bool incrementUp = true;

  void _incrementCounter() {
    setState(() {
      _counter += 1;
    });
    if (_counter == 10) {
      setState(() {
        incrementUp = false;
      });
    }
  }

  void _decrementCounter() {
    setState(() {
      _counter -= 1;
    });
    if (_counter == 0) {
      setState(() {
        incrementUp = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_greeting',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (incrementUp) {
            _incrementCounter();
          } else {
            _decrementCounter();
          }
          print(_counter);
        },
        tooltip: 'Increment',
        child: Icon(Icons.home),
      ),
    );
  }
}
