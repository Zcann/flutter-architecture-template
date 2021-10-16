// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttermvvmtemplate/core/init/network/vexana_manager.dart';
// import 'package:fluttermvvmtemplate/view/messages/model/messages_response_model.dart';
// import 'package:fluttermvvmtemplate/view/messages/service/messages_service.dart';
// import 'package:fluttermvvmtemplate/view/sites/model/sites_model.dart';

// import 'package:mobx/mobx.dart';
// import 'package:provider/provider.dart';

// import '../../../core/base/model/base_view_model.dart';
// import '../../../core/constants/enums/app_theme_enum.dart';
// import '../../../core/init/network/network_manager.dart';
// import '../../../core/init/notifier/theme_notifer.dart';

// part 'sites_view_model.g.dart';

// class SitesViewModel = _SitesViewModelBase with _$SitesViewModel;

// abstract class _SitesViewModelBase with Store, BaseViewModel {
//   GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
//   GlobalKey<FormState> formState = GlobalKey();
//   late IMessagesService service;



//   @override
//   void setContext(BuildContext context) {
//     this.context = context;
//   }

//   @override
//   void init() {
//     service = MessagesService(VexanaManager.instance.networkManager);
//     getList();
//   }

//   @observable
//   bool isLoading = false;

//    @observable
//   String mrText = 'test';

//   @observable
//   List<SitesModel>?  siteList = [];

//   void changeTheme() {
//     Provider.of<ThemeNotifier>(context!, listen: false)
//         .changeValue(AppThemes.DARK);
//   }

//   @action
//   Future<void> getList() async {
//     //siteList =  [];
//     final response = await service.getMessages();
//     var list = response!.data;
//     for (var i = 0; i < 4; i++) {
//       var s = SitesModel(siteName: list![i].productName);
//       siteList!.add(s);
//     }
//     // siteList!.add('ahemt');
//     print('adet' + list!.length.toString()); 
//     print('adet' + siteList!.length.toString()); 

//       isLoadingChange();
//   }

//   @action
//   void isLoadingChange() {
//     isLoading = !isLoading;
//     mrText = 'deneme222';
//   }
// }
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/init/network/vexana_manager.dart';
import 'package:fluttermvvmtemplate/view/messages/model/messages_response_model.dart';
import '../model/sites_model.dart';
import '../service/sites_service.dart';

import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import '../../../core/base/model/base_view_model.dart';
import '../../../core/constants/enums/app_theme_enum.dart';
import '../../../core/init/notifier/theme_notifer.dart';

//import '../model/sites_model.dart';

part 'sites_view_model.g.dart';


class SitesViewModel = _SitesViewModelBase with _$SitesViewModel;

abstract class _SitesViewModelBase with Store, BaseViewModel {
  GlobalKey<FormState> formState = GlobalKey();
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  late ISitesService service;
  


  @override
  void setContext(BuildContext context) {
    this.context = context;
  }

  @override
  void init() {
    service = SitesService(VexanaManager.instance.networkManager);
    //getList();
  }
  

  @observable
  bool isLoading = false;

  
  @observable
  List<SitesModel>? siteList = [];
  

  void changeTheme() {
    Provider.of<ThemeNotifier>(context!, listen: false)
        .changeValue(AppThemes.DARK);
  }

  @action
  Future<void> getSampleRequest() async {
    isLoading = true;
    
  }


  @action
  Future<void> getList() async {
    final response = await service.getSites();
    var list = response!.data;
    for (var i = 0; i < 4; i++) {
      var s = SitesModel(siteName: list![i].productName);
      siteList!.add(s);
    }

  }
}
