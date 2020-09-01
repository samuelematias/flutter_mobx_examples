import 'package:flutter/material.dart';
import 'package:common_package/common_package.dart';
import '../controllers/form_controller.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<FormController>(context);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          Observer(
            builder: (_) => _buildTexfield(
              labelText: 'Name',
              onChanged: (String value) =>
                  controller.client.changeName(newName: value),
              errorText: controller.validateName,
            ),
          ),
          Observer(
            builder: (_) => _buildTexfield(
              labelText: 'Email',
              onChanged: (String value) =>
                  controller.client.changeEmail(newEmail: value),
              errorText: controller.validateEmail,
            ),
          ),
          Observer(
            builder: (_) => _buildTexfield(
              labelText: 'Cpf',
              onChanged: (String value) =>
                  controller.client.changeCpf(newCpf: value),
              errorText: controller.validateCpf,
            ),
          ),
          Observer(
            builder: (_) => PrimaryButton(
              label: 'Save',
              onPressed: () {},
              disabled: !controller.isValid,
            ),
          ),

          // PrimaryButton()
        ],
      ),
    );
  }

  Widget _buildTexfield({
    @required String labelText,
    @required ValueChanged<String> onChanged,
    String Function() errorText,
  }) =>
      Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: labelText,
              errorText: errorText == null ? null : errorText(),
            ),
            onChanged: onChanged,
          ),
          const SizedBox(height: 20)
        ],
      );
}
