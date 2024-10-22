import 'package:flutter/material.dart';
import 'package:observer/observer.dart';
import 'package:observer/subject.dart';

class Counter extends ChangeNotifier implements Subject {

    int _count = 0;
    final List<Observer> _observers = [];
    final ValueNotifier<int> _countNotifier = ValueNotifier<int>(0);
    int get count => _count;
    ValueNotifier<int> get countNotifier => _countNotifier;

    void increment() {
        _count++;
        _countNotifier.value = _count;
        notify();
    }

    @override
    void attach(Observer observer) {
        _observers.add(observer);
    }

    @override
    void detach(Observer observer) {
      _observers.remove(observer);
    }

    @override
    void notify() {
      notifyListeners();
      for (var observer in _observers) {
        observer.update();
      }
    }
}