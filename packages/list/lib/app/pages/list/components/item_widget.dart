import 'package:common_package/common_package.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../models/item_model.dart';

class Itemwidget extends StatelessWidget {
  const Itemwidget({Key key, this.item, this.removeClicked}) : super(key: key);

  final ItemModel item;
  final VoidCallback removeClicked;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ListTile(
          title: Text(item.title),
          leading: Checkbox(
              value: item.check,
              onChanged: (bool value) => item.setCheck(value: value)),
          trailing: IconButton(
            icon: const Icon(Icons.remove_circle),
            color: Colors.red,
            onPressed: removeClicked,
          ),
        );
      },
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<ItemModel>('item', item));
    properties
        .add(DiagnosticsProperty<Function>('removeClicked', removeClicked));
  }
}
