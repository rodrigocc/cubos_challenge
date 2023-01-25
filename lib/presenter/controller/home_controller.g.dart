// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on _HomeControllerBase, Store {
  late final _$moviesAtom =
      Atom(name: '_HomeControllerBase.movies', context: context);

  @override
  List<MovieResults> get movies {
    _$moviesAtom.reportRead();
    return super.movies;
  }

  @override
  set movies(List<MovieResults> value) {
    _$moviesAtom.reportWrite(value, super.movies, () {
      super.movies = value;
    });
  }

  late final _$genrerIdAtom =
      Atom(name: '_HomeControllerBase.genrerId', context: context);

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

  late final _$fetchMoviesAsyncAction =
      AsyncAction('_HomeControllerBase.fetchMovies', context: context);

  @override
  Future<void> fetchMovies(int genrerId) {
    return _$fetchMoviesAsyncAction.run(() => super.fetchMovies(genrerId));
  }

  late final _$searchMoviesAsyncAction =
      AsyncAction('_HomeControllerBase.searchMovies', context: context);

  @override
  Future<void> searchMovies(String value, int genrerId) {
    return _$searchMoviesAsyncAction
        .run(() => super.searchMovies(value, genrerId));
  }

  late final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase', context: context);

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
movies: ${movies},
genrerId: ${genrerId}
    ''';
  }
}
