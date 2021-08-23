import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/base/view/base_widget.dart';
import '../viewModel/site_list_view_model.dart';


class SitesView extends SitesViewModel {
  Widget build(BuildContext context) {
    return BaseView<SitesViewModel>(
        viewModel: SitesViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, SitesViewModel value) =>
            Scaffold(
              appBar: AppBar(),
              body: getListView(value, context),
            ));
  }
}
  
  Widget getListView(SitesViewModel value, BuildContext context){
    
    return   ListView.builder(
        itemCount: value.siteList!.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
            ),
            title: Text(value.siteList![index].siteName ?? ''),
          );
        },
      );


  }