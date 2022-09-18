import 'package:flutter/material.dart';
import 'package:wordle_app/my_wordle_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wordle App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyWordlePage(),
    );
  }
}
