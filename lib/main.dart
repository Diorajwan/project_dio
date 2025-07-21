import 'package:flutter/material.dart';

void main() {
  runApp(BelajarFlutter());
}

class BelajarFlutter extends StatelessWidget {
  const BelajarFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('hello'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Text(
            'Selamat datang di belajar flutter',
            style: TextStyle(
              color: Colors.amberAccent,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
