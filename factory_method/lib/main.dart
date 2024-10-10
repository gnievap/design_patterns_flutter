import 'package:factory_method/platform_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
                title: const Text('Patrón Factory'),
        ),
        body: const Center(
            child: PlatformButton(),
        ),
      ),
    );
  }
}

