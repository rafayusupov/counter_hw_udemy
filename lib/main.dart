// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyCounter());

class MyCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
          centerTitle: true,
          backgroundColor: Colors.orangeAccent,
        ),
        body: Container(
          padding: EdgeInsets.all(130),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Tap "-" to decrement',
                  style: TextStyle(color: Colors.white)),
              CounterWidget(),
              Text('Tap "+" to decrement',
                  style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        backgroundColor: Colors.white10,
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  late int _counter;

  @override
  void initState() {
    _counter = 50;
    super.initState();
  }

  void _increment() {
    setState(() {
      ++_counter;
    });
  }

  void _decrement() {
    setState(() {
      --_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.deepPurple,
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
                onPressed: _decrement,
                icon: Icon(Icons.remove),
                color: Colors.white),
            Text(
              '$_counter',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            IconButton(
                onPressed: _increment,
                icon: Icon(Icons.add),
                color: Colors.white),
          ]),
    );
  }
}