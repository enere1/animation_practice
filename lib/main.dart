import 'package:animation_practice_udemy/component/animated_container_example.dart';
import 'package:animation_practice_udemy/component/animated_opacity_example.dart';
import 'package:animation_practice_udemy/component/animated_padding_example.dart';
import 'package:animation_practice_udemy/component/animated_physical_example.dart';
import 'package:animation_practice_udemy/component/animated_text_example.dart';
import 'package:flutter/material.dart';

import 'component/animated_align_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation Course',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Animation Course"),
        ),
        body: Center(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AnimatedAlignExample()));
                    },
                    child: const Text("AnimatedAlignExample")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AnimatedContainerExample()));
                    },
                    child: const Text("AnimatedContainerExample")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AnimatedTextExample()));
                    },
                    child: const Text("AnimatedTextExample")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AnimatedOpacityExample()));
                    },
                    child: const Text("AnimatedOpacityExample")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AnimatedPaddingExample()));
                    },
                    child: const Text("AnimatedPaddingExample")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AnimatedPhysicalExample()));
                    },
                    child: const Text("AnimatedPhysicalExample"))
              ],
            )));
  }
}
