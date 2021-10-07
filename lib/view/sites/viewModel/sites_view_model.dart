import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/init/network/vexana_manager.dart';
import 'package:fluttermvvmtemplate/view/messages/model/messages_response_model.dart';
import 'package:fluttermvvmtemplate/view/messages/service/messages_service.dart';

import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import '../../../core/base/model/base_view_model.dart';
import '../../../core/constants/enums/app_theme_enum.dart';
import '../../../core/init/network/network_manager.dart';
import '../../../core/init/notifier/theme_notifer.dart';

part 'sites_view_model.g.dart';

class SitesViewModel = _SitesViewModelBase with _$SitesViewModel;

abstract class _SitesViewModelBase with Store, BaseViewModel {
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  GlobalKey<FormState> formState = GlobalKey();
  late IMessagesService service;


  void setContext(BuildContext context) {
    this.context = context;
  }

  @override
  void init() {
    service = MessagesService(VexanaManager.instance.networkManager);

  }

  @observable
  bool isLoading = false;

  @observable
  List<String>?  siteList;

  void changeTheme() {
    Provider.of<ThemeNotifier>(context!, listen: false)
        .changeValue(AppThemes.DARK);
  }

  @action
  Future<void> getList() async {
    final response = await service.getMessages();
    for (var i = 0; i < 4; i++) {
      var s = response!.data![i].productName;
      siteList!.add(s!);
    }
    
  }

  @action
  void isLoadingChange() {
    isLoading = !isLoading;
  }
}
