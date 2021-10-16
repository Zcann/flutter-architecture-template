import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fluttermvvmtemplate/core/base/view/base_widget.dart';
import 'package:fluttermvvmtemplate/view/sites/viewModel/sites_view_model.dart';
import '../viewmodel/messages_view_model.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../../core/extension/string_extension.dart';
import '../../../../core/init/lang/locale_keys.g.dart';

class MessageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<SitesViewModel>(
        viewModel: SitesViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, SitesViewModel value) => Page(value,context)
      );
  }

  Widget Page(SitesViewModel value, BuildContext context){
    return Scaffold(
              appBar: AppBar(),
              body: showMessages(value, context)
            );
  }
 

  Observer showMessages(SitesViewModel value, BuildContext context) {
    return Observer(builder: (_) =>
     ListView.builder(
        itemCount: value.siteList!.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.greenAccent,
            padding: EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
            child: Align(
              alignment: Alignment.centerLeft ,
              child: Container(
                decoration: BoxDecoration(color: Colors.black12,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(16),
                child: Text(
                  value.siteList![index].siteName.toString(),
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          );
        },
      ));
    }
}
