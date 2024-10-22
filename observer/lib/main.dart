import 'package:flutter/material.dart';
import 'package:observer/counter_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Patrón Observer en Flutter'),
        ),
        body: CounterScreen(),
      ),
    );
  }

}

