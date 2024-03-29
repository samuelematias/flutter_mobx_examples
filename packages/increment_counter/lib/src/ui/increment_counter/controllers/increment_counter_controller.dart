import 'package:common_package/common_package.dart';
part 'increment_counter_controller.g.dart';

class IncrementCounterController = IncrementCounterControllerBase
    with _$IncrementCounterController;

abstract class IncrementCounterControllerBase with Store {
  @observable
  int counter = 0;

  @action
  int increment() => counter++;
}
