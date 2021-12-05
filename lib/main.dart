import 'package:cara_coroa/jogar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cara ou coroa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Jogar(title: 'Cara ou coroa'),
    );
  }
}