import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// With slivers, you can create a dynamic, lazy-loading system. Only the slivers that are currently
//visible on the screen (or nearby) will be loaded, making the scrolling smoother and more efficient.
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverList(
          // delegate ->  it determines what content should be displayed in the list.
          delegate: SliverChildBuilderDelegate(
            // the SliverChildBuilderDelegate -->creates a helper (delegate) that knows how to make elements
            //for a scrolling list. It does this by following a set of instructions (callback)
            //on how to build each individual item in the list.
            (BuildContext context, int index) {
              return ListTile(
                title: Text('Item $index'),
              );
            },
          ),
        ),
      ]),
    );
  }
}
