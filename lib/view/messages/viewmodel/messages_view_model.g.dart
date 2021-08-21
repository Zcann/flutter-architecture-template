// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MessagesViewModel on _MessagesViewModelBase, Store {
  Computed<bool>? _$isEvenComputed;

  @override
  bool get isEven => (_$isEvenComputed ??= Computed<bool>(() => super.isEven,
          name: '_MessagesViewModelBase.isEven'))
      .value;

  final _$isLoadingAtom = Atom(name: '_MessagesViewModelBase.isLoading');

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

  final _$numberAtom = Atom(name: '_MessagesViewModelBase.number');

  @override
  int get number {
    _$numberAtom.reportRead();
    return super.number;
  }

  @override
  set number(int value) {
    _$numberAtom.reportWrite(value, super.number, () {
      super.number = value;
    });
  }

  final _$messagesAtom = Atom(name: '_MessagesViewModelBase.messages');

  @override
  List<MessagesModel>? get messages {
    _$messagesAtom.reportRead();
    return super.messages;
  }

  @override
  set messages(List<MessagesModel>? value) {
    _$messagesAtom.reportWrite(value, super.messages, () {
      super.messages = value;
    });
  }

  final _$getSampleRequestAsyncAction =
      AsyncAction('_MessagesViewModelBase.getSampleRequest');

  @override
  Future<void> getSampleRequest() {
    return _$getSampleRequestAsyncAction.run(() => super.getSampleRequest());
  }

  final _$getMessagesAsyncAction =
      AsyncAction('_MessagesViewModelBase.getMessages');

  @override
  Future<void> getMessages() {
    return _$getMessagesAsyncAction.run(() => super.getMessages());
  }

  final _$_MessagesViewModelBaseActionController =
      ActionController(name: '_MessagesViewModelBase');

  @override
  void incrementNumber() {
    final _$actionInfo = _$_MessagesViewModelBaseActionController.startAction(
        name: '_MessagesViewModelBase.incrementNumber');
    try {
      return super.incrementNumber();
    } finally {
      _$_MessagesViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
number: ${number},
messages: ${messages},
isEven: ${isEven}
    ''';
  }
}
