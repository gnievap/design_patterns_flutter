import 'package:observer/observer.dart';

abstract class Subject {
    void attach(Observer observer);
    void detach(Observer observer);
    void notify();
}