// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MessagesViewModel on _MessagesViewModelBase, Store {
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

  final _$messagesAtom = Atom(name: '_MessagesViewModelBase.messages');

  @override
  List<Data>? get messages {
    _$messagesAtom.reportRead();
    return super.messages;
  }

  @override
  set messages(List<Data>? value) {
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

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
messages: ${messages}
    ''';
  }
}
