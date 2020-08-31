import 'package:flutter/material.dart';

class InputFieldsPage extends StatelessWidget {
  const InputFieldsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Fields'),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildTexfield(labelText: 'Nome'),
              _buildTexfield(labelText: 'Sobrenome'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTexfield({@required String labelText}) => Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: labelText),
          ),
          const SizedBox(height: 20)
        ],
      );
}
