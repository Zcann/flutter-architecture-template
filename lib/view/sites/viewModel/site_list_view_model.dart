import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import '../../../core/base/model/base_view_model.dart';
import '../../../core/constants/enums/app_theme_enum.dart';
import '../../../core/init/network/network_manager.dart';
import '../../../core/init/notifier/theme_notifer.dart';

import '../model/sites_model.dart';
part 'site_list_view_model.g.dart';

class SitesViewModel = _SitesViewModelBase with _$SitesViewModel;

abstract class _SitesViewModelBase with Store, BaseViewModel {
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

  void setContext(BuildContext context) {
    this.context = context;
  }

  @override
  void init() {}

  @observable
  bool isLoading = false;

  @observable
  List<SitesModel>?  siteList;

  void changeTheme() {
    Provider.of<ThemeNotifier>(context!, listen: false)
        .changeValue(AppThemes.DARK);
  }

  @action
  Future<void> getList() async {
    for (var i = 0; i < 4; i++) {
      SitesModel s = SitesModel();
      siteList!.add(s);
    }
    
  }

  @action
  void isLoadingChange() {
    isLoading = !isLoading;
  }
}
