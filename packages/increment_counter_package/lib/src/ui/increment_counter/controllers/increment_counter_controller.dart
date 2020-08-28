import 'package:mobx/mobx.dart';

class IncrementCounterController {
  IncrementCounterController() {
    increment = Action(() => _increment());

    autorun((_) {
      print(conuter.value);
    });
  }

  Observable<int> conuter = Observable(0);
  Action increment;

  int _increment() => conuter.value = conuter.value + 1;
}
