import 'package:common_package/common_package.dart';
import 'package:flutter/material.dart';
import '../../models/item_model.dart';
import 'components/item_widget.dart';
import 'controller/list_controller.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key key}) : super(key: key);
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final _controller = ListController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: const InputDecoration(hintText: 'Search...'),
          onChanged: _controller.setFilter,
        ),
        actions: [
          IconButton(
              icon: Observer(
                builder: (_) => Text('${_controller.totalChecked}'),
              ),
              onPressed: () {})
        ],
      ),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _buildDialog(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildBody() => Observer(
        builder: (_) => ListView.builder(
            itemCount: _controller.listFiltered.length,
            itemBuilder: (_, index) {
              final ItemModel item = _controller.listFiltered[index];
              return Itemwidget(
                item: item,
                removeClicked: () => _onPressedRemoveItem(model: item),
              );
            }),
      );

  Future<void> _buildDialog() {
    final ItemModel model = ItemModel();
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add items'),
        content: TextField(
          decoration: const InputDecoration(
              labelText: 'New item', border: OutlineInputBorder()),
          autofocus: true,
          onChanged: model.setTitle,
          onEditingComplete: () => _onPressedSaveButton(model: model),
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () => _onPressedSaveButton(model: model),
            child: const Text('Save'),
          ),
          FlatButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel')),
        ],
      ),
    );
  }

  void _onPressedSaveButton({@required ItemModel model}) {
    _controller.addItem(model);
    Navigator.pop(context);
  }

  void _onPressedRemoveItem({@required ItemModel model}) {
    _controller.removeItem(model);
  }
}
