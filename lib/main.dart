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
  TimeOfDay? time = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          _formatTime(time!),
          style: const TextStyle(fontSize: 60),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.access_time_outlined),
        onPressed: () async {
          TimeOfDay? newTime =
              await showTimePicker(context: context, initialTime: time!);
          if (newTime != null) {
            setState(() {
              time = newTime;
            });
          }
        },
      ),
    );
  }
}

String _formatTime(TimeOfDay time) {
  int hour = time.hourOfPeriod;
  String minute = time.minute.toString().padLeft(2, '0');
  String period = time.period == DayPeriod.am ? 'AM' : 'PM';
  return '$hour:$minute $period';
}
