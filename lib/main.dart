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

// hero smoothly animates it from one screen to another
// before using that there will be tranisition
//but the hero make this transition much more smoother
//giving more animatated interaction
//
// It's designed to create a smooth transition between two instances of
//the Hero widget that share the same tag. The transition is typically
// applied to properties like position, scale, and opacity of the Hero widgets.
//
// The Hero widget should ideally encapsulate the specific widget you want to transition.
//
// It's common to wrap an image, icon, or any other widget you want to animate within the Hero
//
// The key is to apply the Hero widget to the specific widgets you want to transition smoothly.

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 2, 36, 87),
          title: Text(
            widget.title,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        body: const ListTileWidget());
  }
}

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: const Hero(tag: 'tag-1', child: Icon(Icons.person)),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const SecondPage()),
        );
      },
      title: const Text('click on me'),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('second page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: 'tag-1',
              child: Container(
                color: Colors.orangeAccent,
                height: 100,
                width: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
