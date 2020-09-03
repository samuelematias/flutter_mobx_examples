import 'package:common_package/common_package.dart';
import 'package:rxdart/rxdart.dart';
import '../../../models/item_model.dart';
part 'list_controller.g.dart';

class ListController = _ListControllerBase with _$ListController;

final listItems = BehaviorSubject<List<ItemModel>>.seeded([]);
final filter = BehaviorSubject<String>.seeded('');

abstract class _ListControllerBase with Store {
  _ListControllerBase() {
    output = Rx.combineLatest2<List<ItemModel>, String, List<ItemModel>>(
        listItems.stream, filter.stream, (
      List<ItemModel> list,
      String filter,
    ) {
      if (filter.isEmpty) {
        return list;
      } else {
        return list
            .where((item) =>
                item.title.toLowerCase().contains(filter.toLowerCase()))
            .toList();
      }
    }).asObservable(initialValue: []);
  }

  ObservableStream<List<ItemModel>> output;

  @computed
  int get totalChecked => output.value.where((item) => item.check).length;

  void setFilter(String value) => filter..add(value);

  @action
  void addItem(ItemModel model) {
    final list = List<ItemModel>.from(listItems.value);
    list..addAll([model]);
    listItems..add(list);
  }

  @action
  void removeItem(ItemModel model) {
    final list = List<ItemModel>.from(listItems.value);
    list..removeWhere((item) => item.title == model.title);
    listItems..add(list);
  }
}
