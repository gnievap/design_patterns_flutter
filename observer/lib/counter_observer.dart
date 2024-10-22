import 'package:flutter/material.dart';
import 'package:observer/counter.dart';
import 'package:observer/observer.dart';

class CounterObserver extends StatelessWidget implements Observer {

  final Counter counter;

  CounterObserver({super.key, required this.counter}) {
    counter.attach(this);
  }

  @override
  void update() {
  // Flutter no permite llamar a setState fuera del contexto del widget,
  // por lo que usaremos un ValueNotifier en su lugar
  // para notificar los cambios.
}

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: counter.countNotifier,
      builder: (context, value, child) {
        return Text('Count: $value');
      },  
    );
  }

}