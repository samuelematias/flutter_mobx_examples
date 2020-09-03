import 'package:mobx/mobx.dart';
import '../../../models/item_model.dart';
part 'list_controller.g.dart';

class ListController = _ListControllerBase with _$ListController;

abstract class _ListControllerBase with Store {
  @observable
  ObservableList<ItemModel> listItems = [
    ItemModel(title: 'Item 1', check: true),
    ItemModel(title: 'Item 2'),
    ItemModel(title: 'Item 3'),
  ].asObservable();

  @action
  List<ItemModel> addItem(ItemModel model) => listItems..addAll([model]);
}
