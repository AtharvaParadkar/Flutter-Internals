import 'package:flutter/material.dart';
import 'package:flutter_internals/ui_updates.dart';

void main () => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Internals'),
        ),
        body: const UiUpdates(),
      ),
    );
  }
}