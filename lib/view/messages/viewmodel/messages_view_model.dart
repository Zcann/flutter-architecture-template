import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/init/network/vexana_manager.dart';
import 'package:fluttermvvmtemplate/view/messages/model/messages_response_model.dart';
import '../model/messages_model.dart';
import '../service/messages_service.dart';

import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import '../../../core/base/model/base_view_model.dart';
import '../../../core/constants/enums/app_theme_enum.dart';
import '../../../core/init/notifier/theme_notifer.dart';

//import '../model/sites_model.dart';

part 'messages_view_model.g.dart';


class MessagesViewModel = _MessagesViewModelBase with _$MessagesViewModel;

abstract class _MessagesViewModelBase with Store, BaseViewModel {
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
    
  }
  

  @observable
  int number = 0;

  @observable
  bool isLoading = false;

  @observable
  bool isEven = false;
  
  @observable
  bool dogru = false;

  @observable
  List<Data>? messages;
  

  void changeTheme() {
    Provider.of<ThemeNotifier>(context!, listen: false)
        .changeValue(AppThemes.DARK);
  }

  @action
  Future<void> getSampleRequest() async {
    isLoading = true;
    
  }


  @action
  Future<void> getMessages() async {
    final response = await service.getMessages();
    messages = response!.data;

    print(messages!.length.toString());
  }
}
