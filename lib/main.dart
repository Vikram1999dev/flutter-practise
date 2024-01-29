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
      home: const MyHomePage(title: 'Show Time Picker'),
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
  String title = '';
  String firstPage = 'First Page';
  String secondPage = 'Second Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: ((context) => [
                  PopupMenuItem(value: firstPage, child: Text(firstPage)),
                  PopupMenuItem(value: secondPage, child: Text(secondPage))
                ]),
            onSelected: (String newValue) {
              setState(() {
                title = newValue;
              });
            },
          )
        ],
        backgroundColor: Colors.blue,
      ),
      body: const Center(),
    );
  }
}
