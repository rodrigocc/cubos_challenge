import 'package:mobx/mobx.dart';
part 'gender_tab.g.dart';

class TabModel = _TabModelBase with _$TabModel;

abstract class _TabModelBase with Store {
  _TabModelBase(this.selected, this.genrerName);

  @observable
  bool selected;

  String genrerName;

  @action
  void setSelectedStatus(newSelectedStatus) {
    selected = newSelectedStatus;
  }
}
