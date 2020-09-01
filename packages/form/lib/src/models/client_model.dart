import 'package:mobx/mobx.dart';
part 'client_model.g.dart';

class ClientModel = _ClientModelBase with _$ClientModel;

abstract class _ClientModelBase with Store {
  @observable
  String name;

  @action
  String changeName(String value) => name = value;

  @observable
  String email;

  @action
  String changeEmail(String value) => email = value;

  @observable
  String cpf;

  @action
  String changeCpf(String value) => cpf = value;
}
