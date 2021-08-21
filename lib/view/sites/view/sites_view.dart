import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/base/view/base_widget.dart';
import 'package:fluttermvvmtemplate/view/sites/viewModel/site_list_view_model.dart';
import 'package:fluttermvvmtemplate/view/sites/model/sites_model.dart';

import 'package:mobx/mobx.dart';

class SitesView extends SitesViewModel {
  @override
  Widget build(BuildContext context) {
    return BaseView<SitesViewModel>(
      viewModel: SitesViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, SitesViewModel value) =>
          getListView(context)
    );
  }
}
  
  Widget getListView(BuildContext context){
    
    return Scaffold(appBar: AppBar(),
      body: ListView.builder(
        itemCount: siteList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
            ),
            title: Text(siteList[index].siteName ?? ''),
          );
        },
      ),);


  }