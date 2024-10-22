import 'package:flutter/material.dart';
import 'package:observer/counter.dart';
import 'package:observer/counter_observer.dart';

class CounterScreen extends StatelessWidget {

final Counter counter = Counter();

  CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CounterObserver(counter: counter),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
          counter.increment();
          },
          child: const Text('Incrementar'),
        ),
      ],
    );
  }
}