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
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            //if you want your appbar to stay there use
            //pinned as true
            //when scrolling it will also
            // make flexible space disappear
            pinned: true,
            //if we want the appbar to comeback immediately when we scroll back
            //we use floating as true
            // floating: true,
            snap: false,
            title: Text(
              'Sliver App Bar',
              style: TextStyle(color: Colors.white),
            ),
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Extra Space'),
              centerTitle: true,
            ),
            backgroundColor: Colors.blue,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Text(
                  'Sliver',
                  style: TextStyle(fontSize: 600),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
