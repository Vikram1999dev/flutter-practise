// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Practise',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Page View'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});
  final TimeOfDay? time = const TimeOfDay(hour: 12, minute: 12);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 47, 105, 191),
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Page 1',
                style: TextStyle(color: Colors.white, fontSize: 60),
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 16, 48, 74),
            child: const Center(
              child: Text(
                'Page 2',
                style: TextStyle(color: Colors.white, fontSize: 60),
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 227, 46, 6),
            child: const Center(
              child: Text(
                'Page 3',
                style: TextStyle(color: Colors.white, fontSize: 60),
              ),
            ),
          )
        ],
      ),
    );
  }
}
