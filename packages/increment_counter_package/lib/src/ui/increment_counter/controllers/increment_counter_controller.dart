import 'package:mobx/mobx.dart';

class IncrementCounterController {
  IncrementCounterController() {
    increment = Action(() => _increment());
  }

  Observable<int> conuter = Observable(0);
  Action increment;

  int _increment() => conuter.value = conuter.value + 1;
}
