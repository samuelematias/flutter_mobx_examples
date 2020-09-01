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
  }) =>
      Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: labelText,
              errorText: 'error xd',
            ),
            onChanged: onChanged,
          ),
          const SizedBox(height: 20)
        ],
      );
}
