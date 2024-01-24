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
      home: const MyHomePage(title: 'Hero'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Widget _image;

  List<Widget> _list = []; // Initialize the list with empty values

  @override
  void initState() {
    super.initState();
    _image = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        'assets/image.jpg',
        height: 100,
        width: 100,
        fit: BoxFit.cover,
      ),
    );

    _list = List.filled(8, _image); // Fill the list with the initialized image
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          children: _list,
        ),
      ),
    );
  }
}
