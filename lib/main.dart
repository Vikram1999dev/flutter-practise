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
      home: const MyHomePage(title: 'Sliver App Example 3'),
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
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverGrid(
            // So, SliverGridDelegateWithMaxCrossAxisExtent is a specific type of grid delegate
            //that says, "I want a grid, and each item should be a certain maximum width or height."
            //This helps in creating a grid where items have a consistent size, making it easy
            //to control the overall layout.
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              // Maximum width or height of each item
              maxCrossAxisExtent: 150.0,
              // Spacing between items horizontally
              crossAxisSpacing: 8.0,
              // Spacing between items vertically
              mainAxisSpacing: 8.0,
              // Ratio of the width to the height of each item
              childAspectRatio: 0.25,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return GridItem(index: index);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  const GridItem({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.primaries[index % Colors.primaries.length],
      alignment: Alignment.center,
      child: Text(
        'Item $index',
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
