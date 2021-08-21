import 'package:flutter/cupertino.dart';
import 'package:fluttermvvmtemplate/view/messages/model/messages_model.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import '../../../core/base/model/base_view_model.dart';
import '../../../core/constants/enums/app_theme_enum.dart';
import '../../../core/init/notifier/theme_notifer.dart';
part 'messages_view_model.g.dart';

class MessagesViewModel = _MessagesViewModelBase with _$MessagesViewModel;

abstract class _MessagesViewModelBase with Store, BaseViewModel {
  void setContext(BuildContext context) {
    this.context = context;
  }

  void init() {}

  @observable
  bool isLoading = false;

  @observable
  int number = 0;

  @computed
  bool get isEven => number % 2 == 0;

  @action
  void incrementNumber() {
    number++;
  }

  void changeTheme() {
    Provider.of<ThemeNotifier>(context!, listen: false)
        .changeValue(AppThemes.DARK);
  }

  @action
  Future<void> getSampleRequest() async {
    isLoading = true;
  }

  @observable
  List<MessagesModel>?  messages;

  @action 
  Future<void> getMessages() async {
    //get messages ve messages listesine at 
    
  }
}
