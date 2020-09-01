import 'package:common_package/common_package.dart';
import 'package:flutter/material.dart';
import '../form/controllers/form_controller.dart';
import '../form/widgets/body.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _controller = GetIt.I.get<FormController>();

  @override
  void dispose() {
    super.dispose();
    _controller.client.changeName(newName: '');
    _controller.client.changeEmail(newEmail: '');
    _controller.client.changeCpf(newCpf: '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Observer(
          builder: (_) =>
              Text(_controller.isValid ? 'Valid form' : 'Invalid form'),
        ),
      ),
      body: const BodyWidget(),
    );
  }
}
