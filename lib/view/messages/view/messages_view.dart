import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fluttermvvmtemplate/core/base/view/base_widget.dart';
import '../viewmodel/messages_view_model.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/extension/string_extension.dart';
import '../../../../core/init/lang/locale_keys.g.dart';

class MessageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<MessagesViewModel>(
        viewModel: MessagesViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, MessagesViewModel value) =>
            Scaffold(
              appBar: AppBar(),
              body: showMessages(value, context),
            ));
  }

  Widget showMessages(MessagesViewModel value, BuildContext context) {
    return Observer(builder: (_) {
      return ListView.builder(
        itemCount: value.messages!.length,
        shrinkWrap: true,
        padding: EdgeInsets.only(top: 10, bottom: 10),
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
            child: Align(
              //alignment: (messages[index]),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(16),
                child: Text(
                  value.messages![index].toString(),
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
