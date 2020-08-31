import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../controllers/input_fields_controller.dart';

class InputFieldsPage extends StatelessWidget {
  const InputFieldsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final InputFieldsController controller = InputFieldsController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Input fields'),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildTexfield(
                labelText: 'Nome',
                onChanged: (String value) =>
                    controller.changeName(newName: value),
              ),
              _buildTexfield(
                labelText: 'Sobrenome',
                onChanged: (String value) =>
                    controller.changeLastName(newName: value),
              ),
              Observer(
                builder: (_) => Text(controller.fullName),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTexfield({
    @required String labelText,
    @required ValueChanged<String> onChanged,
  }) =>
      Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: labelText),
            onChanged: onChanged,
          ),
          const SizedBox(height: 20)
        ],
      );
}
