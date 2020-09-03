import 'package:mobx/mobx.dart';
part 'item_model.g.dart';

class ItemModel = _ItemModelBase with _$ItemModel;

abstract class _ItemModelBase with Store {
  _ItemModelBase({this.title, this.check});

  @observable
  String title;

  @observable
  bool check;

  @action
  String setTitle(String value) => title = value;

  @action
  bool setCheck({bool value}) => check = value;
}
