import 'package:common_package/common_package.dart';
import 'package:flutter/material.dart';
import '../form/controllers/form_controller.dart';
import '../form/widgets/body.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<FormController>();

    return Scaffold(
      appBar: AppBar(
        title: Observer(
          builder: (_) =>
              Text(controller.isValid ? 'Valid form' : 'Invalid form'),
        ),
      ),
      body: const BodyWidget(),
    );
  }
}
