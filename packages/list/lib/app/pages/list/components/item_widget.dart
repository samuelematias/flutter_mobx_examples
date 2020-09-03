import 'package:flutter/material.dart';

class Itemwidget extends StatelessWidget {
  const Itemwidget({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Title'),
      leading: Checkbox(value: true, onChanged: (bool value) {}),
      trailing: IconButton(
        icon: const Icon(Icons.remove_circle),
        color: Colors.red,
        onPressed: () {},
      ),
    );
  }
}
