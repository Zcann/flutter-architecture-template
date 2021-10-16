import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fluttermvvmtemplate/core/base/view/base_widget.dart';
import '../viewmodel/sites_view_model.dart';



class Testsssss extends StatelessWidget {
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
              appBar: AppBar(title: Text(value.siteList!.length.toString()),),
              body: showMessages(value, context)
            );
  }
 

  Observer showMessages(SitesViewModel value, BuildContext context) {
    value.getList();
    Text(value.siteList!.length.toString());
    return Observer(builder: (_) =>
    Text(value.siteList!.length.toString()));
    //  ListView.builder(
    //     itemCount: value.siteList!.length,
    //     itemBuilder: (context, index) {
    //       return 
          
    //       Container(
    //         color: Colors.orange,
    //         padding: EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
    //         child: Align(
    //           alignment: Alignment.center ,
    //           child: Container(
    //             decoration: BoxDecoration(color: Colors.black12,
    //               borderRadius: BorderRadius.circular(20),
    //             ),
    //             padding: EdgeInsets.all(16),
    //             child: Text(
    //               value.siteList![index].toString(),
    //               style: TextStyle(fontSize: 15),
    //             ),
    //           ),
    //         ),
    //       );
    //     },
    //   ));
    }
}
