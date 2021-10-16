// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mytest_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$mytestViewModel on _mytestViewModelBase, Store {
  final _$testlistAtom = Atom(name: '_mytestViewModelBase.testlist');

  @override
  List<Data>? get testlist {
    _$testlistAtom.reportRead();
    return super.testlist;
  }

  @override
  set testlist(List<Data>? value) {
    _$testlistAtom.reportWrite(value, super.testlist, () {
      super.testlist = value;
    });
  }

  final _$gettestAsyncAction = AsyncAction('_mytestViewModelBase.gettest');

  @override
  Future<void> gettest() {
    return _$gettestAsyncAction.run(() => super.gettest());
  }

  @override
  String toString() {
    return '''
testlist: ${testlist}
    ''';
  }
}
