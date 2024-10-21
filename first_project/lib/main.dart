import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Лабораторная 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Activity1(),
    );
  }
}

class Activity1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Первый экран')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Activity2(lastName: 'Иволгина'),
              ),
            );
          },
          child: Text('Нажми'),
        ),
      ),
    );
  }
}

class Activity2 extends StatelessWidget {
  final String lastName;

  Activity2({required this.lastName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Второй экран')),
      body: Center(
        child: Text(
          'Переданный параметр: $lastName',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}