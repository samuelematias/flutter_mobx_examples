import 'package:mobx/mobx.dart';

class IncrementCounterController {
  IncrementCounterController() {
    increment = Action(() => _increment());

    autorun((_) {
      print(counter);
    });
  }

  final Observable<int> _counter = Observable(0);
  Action increment;
  int get counter => _counter.value;
  set counter(int newValue) => _counter.value = newValue;

  int _increment() => counter++;
}
