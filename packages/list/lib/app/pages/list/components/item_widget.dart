import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../models/item_model.dart';

class Itemwidget extends StatelessWidget {
  const Itemwidget({Key key, this.item}) : super(key: key);

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.title),
      leading: Checkbox(value: item.check, onChanged: (bool value) {}),
      trailing: IconButton(
        icon: const Icon(Icons.remove_circle),
        color: Colors.red,
        onPressed: () {},
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<ItemModel>('item', item));
  }
}
