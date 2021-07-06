// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StartController on _StartController, Store {
  final _$currentIndexAtom = Atom(name: '_StartController.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  final _$_StartControllerActionController =
      ActionController(name: '_StartController');

  @override
  dynamic changeCurrentIndex(int value) {
    final _$actionInfo = _$_StartControllerActionController.startAction(
        name: '_StartController.changeCurrentIndex');
    try {
      return super.changeCurrentIndex(value);
    } finally {
      _$_StartControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentIndex: ${currentIndex}
    ''';
  }
}
