import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            _buildTexfield(labelText: 'Name', onChanged: (String value) {}),
          ],
        ),
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
