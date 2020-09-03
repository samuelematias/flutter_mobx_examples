import 'package:common_package/common_package.dart';
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

  @computed
  int get totalChecked => listItems.where((item) => item.check).length;

  @computed
  List<ItemModel> get listFiltered {
    if (filter.isEmpty) {
      return listItems;
    } else {
      return listItems
          .where(
              (item) => item.title.toLowerCase().contains(filter.toLowerCase()))
          .toList();
    }
  }

  @observable
  String filter = '';

  @action
  String setFilter(String value) => filter = value;

  @action
  List<ItemModel> addItem(ItemModel model) => listItems..addAll([model]);

  @action
  List<ItemModel> removeItem(ItemModel model) =>
      listItems..removeWhere((item) => item.title == model.title);
}
