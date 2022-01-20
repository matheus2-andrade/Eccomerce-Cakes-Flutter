// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DetailsStore on _DetailsStoreBase, Store {
  final _$quantidadeAtom = Atom(name: '_DetailsStoreBase.quantidade');

  @override
  int get quantidade {
    _$quantidadeAtom.reportRead();
    return super.quantidade;
  }

  @override
  set quantidade(int value) {
    _$quantidadeAtom.reportWrite(value, super.quantidade, () {
      super.quantidade = value;
    });
  }

  final _$_DetailsStoreBaseActionController =
      ActionController(name: '_DetailsStoreBase');

  @override
  void incrementQuantidade() {
    final _$actionInfo = _$_DetailsStoreBaseActionController.startAction(
        name: '_DetailsStoreBase.incrementQuantidade');
    try {
      return super.incrementQuantidade();
    } finally {
      _$_DetailsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementQuantidade() {
    final _$actionInfo = _$_DetailsStoreBaseActionController.startAction(
        name: '_DetailsStoreBase.decrementQuantidade');
    try {
      return super.decrementQuantidade();
    } finally {
      _$_DetailsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
quantidade: ${quantidade}
    ''';
  }
}
