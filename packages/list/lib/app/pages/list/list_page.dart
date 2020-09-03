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
        title: const TextField(
          decoration: InputDecoration(hintText: 'Search...'),
        ),
      ),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _buildDialog(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildBody() => ListView.builder(
      itemCount: _controller.listItems.length,
      itemBuilder: (_, index) {
        final ItemModel item = _controller.listItems[index];
        return Itemwidget(item: item);
      });

  Future<void> _buildDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Add items'),
          content: TextField(
            decoration: const InputDecoration(
                labelText: 'New item', border: OutlineInputBorder()),
            onChanged: (value) {},
          ),
          actions: <Widget>[
            FlatButton(onPressed: () {}, child: const Text('Save')),
            FlatButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel')),
          ],
        ),
      );
}
