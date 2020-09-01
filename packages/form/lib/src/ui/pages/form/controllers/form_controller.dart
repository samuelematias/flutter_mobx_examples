import 'package:common_package/common_package.dart';
import '../../../../models/client_model.dart';
part 'form_controller.g.dart';

class FormController = _FormControllerBase with _$FormController;

abstract class _FormControllerBase with Store {
  final ClientModel client = ClientModel();

  String validateName() {
    if (client.name == null || client.name.isEmpty) {
      return 'Required field';
    } else if (client.name.length < 3) {
      return 'Your name must be longer than 3 characters';
    }
    return null;
  }

  String validateEmail() {
    if (client.email == null || client.email.isEmpty) {
      return 'Required field';
    } else if (!client.email.contains('@')) {
      return 'This is not a valid email';
    }
    return null;
  }

  String validateCpf() {
    if (client.cpf == null || client.cpf.isEmpty) {
      return 'Required field';
    } else if (client.cpf.length < 3) {
      return 'Your name must be longer than 3 characters';
    }
    return null;
  }
}
