import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
part 'input_fields_controller.g.dart';

class InputFieldsController = InputFieldsControllerBase
    with _$InputFieldsController;

abstract class InputFieldsControllerBase with Store {
  @observable
  String name = '';

  @observable
  String lastName = '';

  @computed
  String get fullName => '$name $lastName';

  @action
  String changeName({@required String newName}) => name = newName;

  @action
  String changeLastName({@required String newName}) => lastName = newName;
}
