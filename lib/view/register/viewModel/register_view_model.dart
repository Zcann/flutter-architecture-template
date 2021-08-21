import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/view/register/model/register_model.dart';

import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import '../../../../core/base/model/base_view_model.dart';
import '../../../../core/constants/enums/app_theme_enum.dart';
import '../../../../core/init/network/network_manager.dart';
import '../../../../core/init/notifier/theme_notifer.dart';

part 'register_view_model.g.dart';

class RegisterViewModel = _RegisterViewModelBase with _$RegisterViewModel;

abstract class _RegisterViewModelBase with Store, BaseViewModel {
  GlobalKey<FormState> formState = GlobalKey();
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();


  void setContext(BuildContext context) {
    this.context = context;
  }

  void init() {}

  @observable
  bool isLoading = false;

  @observable
  bool isRegister = true;

  void changeTheme() {
    Provider.of<ThemeNotifier>(context!, listen: false)
        .changeValue(AppThemes.DARK);
  }

  @action
  Future<void> toPost() async {
    RegisterModel newUser = RegisterModel();
    //post the newUser
    
  }

  @action
  void isLoadingChange() {
    isLoading = !isLoading;
  }

  @action
  void isRegisterChange() {
    isRegister = !isRegister;
  }
}
