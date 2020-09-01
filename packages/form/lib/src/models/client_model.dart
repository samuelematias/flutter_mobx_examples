import 'package:mobx/mobx.dart';
part 'client_model.g.dart';

class ClientModel = _ClientModelBase with _$ClientModel;

abstract class _ClientModelBase with Store {
  @observable
  String name;

  @action
  String changeName({String newName}) => name = newName;

  @observable
  String email;

  @action
  String changeEmail({String newEmail}) => email = newEmail;

  @observable
  String cpf;

  @action
  String changeCpf({String newCpf}) => cpf = newCpf;
}
