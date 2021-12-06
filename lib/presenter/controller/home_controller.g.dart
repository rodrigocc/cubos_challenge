// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$genrerIdAtom = Atom(name: '_HomeControllerBase.genrerId');

  @override
  int get genrerId {
    _$genrerIdAtom.reportRead();
    return super.genrerId;
  }

  @override
  set genrerId(int value) {
    _$genrerIdAtom.reportWrite(value, super.genrerId, () {
      super.genrerId = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void changeGenrerTab(String genrerName) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeGenrerTab');
    try {
      return super.changeGenrerTab(genrerName);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectedCardStatus(int index) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setSelectedCardStatus');
    try {
      return super.setSelectedCardStatus(index);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
genrerId: ${genrerId}
    ''';
  }
}
