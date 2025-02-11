// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_list_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SitesViewModel on _SitesViewModelBase, Store {
  final _$isLoadingAtom = Atom(name: '_SitesViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$siteListAtom = Atom(name: '_SitesViewModelBase.siteList');

  @override
  List<SitesModel>? get siteList {
    _$siteListAtom.reportRead();
    return super.siteList;
  }

  @override
  set siteList(List<SitesModel>? value) {
    _$siteListAtom.reportWrite(value, super.siteList, () {
      super.siteList = value;
    });
  }

  final _$getListAsyncAction = AsyncAction('_SitesViewModelBase.getList');

  @override
  Future<void> getList() {
    return _$getListAsyncAction.run(() => super.getList());
  }

  final _$_SitesViewModelBaseActionController =
      ActionController(name: '_SitesViewModelBase');

  @override
  void isLoadingChange() {
    final _$actionInfo = _$_SitesViewModelBaseActionController.startAction(
        name: '_SitesViewModelBase.isLoadingChange');
    try {
      return super.isLoadingChange();
    } finally {
      _$_SitesViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
siteList: ${siteList}
    ''';
  }
}
