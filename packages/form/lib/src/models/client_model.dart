import 'package:mobx/mobx.dart';
part 'client_model.g.dart';

class ClientModel = _ClientModelBase with _$ClientModel;

abstract class _ClientModelBase with Store {
  @observable
  String name;

  @observable
  String email;

  @observable
  String cpf;
}
