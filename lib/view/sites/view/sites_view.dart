
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fluttermvvmtemplate/core/base/view/base_widget.dart';
import 'package:fluttermvvmtemplate/view/messages/viewmodel/messages_view_model.dart';
import '../viewModel/sites_view_model.dart';


class SitesView extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return BaseView<SitesViewModel>(
        viewModel: SitesViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, SitesViewModel value) =>
            Scaffold(
              endDrawer: Drawer(),
              appBar:AppBar(title: Text('Chats',style: TextStyle(color: Colors.black)),centerTitle: true),
              body: Observer(builder: (_) => getListView(value)),
              floatingActionButton: FloatingActionButton(onPressed: () {
              }, child: Icon(Icons.plus_one),),
            ));
  }

  // Observer Page(SitesViewModel value){
  //   return Observer(builder: (_) => getListView(value)
  //           );
  // }

// Text getText(SitesViewModel value, BuildContext context)
// {
 
// return Text(value.mrText,style: TextStyle(color: Colors.black));
 

// }



  

  Widget getListView(SitesViewModel value)=> ListView.builder(
          itemCount: value.siteList!.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(child: Icon(Icons.apps),),
              title: Text(value.siteList![index].siteName.toString()),
            );
          },
        );
}