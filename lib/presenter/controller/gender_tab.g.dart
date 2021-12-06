// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tab_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TabModel on _TabModelBase, Store {
  final _$selectedAtom = Atom(name: '_TabModelBase.selected');

  @override
  bool get selected {
    _$selectedAtom.reportRead();
    return super.selected;
  }

  @override
  set selected(bool value) {
    _$selectedAtom.reportWrite(value, super.selected, () {
      super.selected = value;
    });
  }

  final _$_TabModelBaseActionController =
      ActionController(name: '_TabModelBase');

  @override
  void setSelectedStatus(dynamic newSelectedStatus) {
    final _$actionInfo = _$_TabModelBaseActionController.startAction(
        name: '_TabModelBase.setSelectedStatus');
    try {
      return super.setSelectedStatus(newSelectedStatus);
    } finally {
      _$_TabModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selected: ${selected}
    ''';
  }
}
