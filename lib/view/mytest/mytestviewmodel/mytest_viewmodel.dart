import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/base/model/base_view_model.dart';
import 'package:fluttermvvmtemplate/core/init/network/vexana_manager.dart';
import 'package:fluttermvvmtemplate/view/messages/model/messages_response_model.dart';
import 'package:fluttermvvmtemplate/view/messages/service/messages_service.dart';

import 'package:mobx/mobx.dart';


part 'mytest_viewmodel.g.dart';


class mytestViewModel = _mytestViewModelBase with _$mytestViewModel;

abstract class _mytestViewModelBase with Store, BaseViewModel {
  GlobalKey<FormState> formState = GlobalKey();
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  late IMessagesService service;

  @override
  void setContext(BuildContext context) {
    this.context = context;
  }

  @override
  void init() {
    service = MessagesService(VexanaManager.instance.networkManager);
    gettest();
  }
  
  @observable
  List<Data>? testlist = [];
  

  @action 
  Future<void> gettest()async{
    final response = await service.getMessages();
    // for (var i = 0 ; i < 4 ; i ++ ){
      
    // }
    testlist = response!.data;
  }
}