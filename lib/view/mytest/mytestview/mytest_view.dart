import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/base/view/base_widget.dart';
import 'package:fluttermvvmtemplate/view/authenticate/test/viewmodel/test_view_model.dart';

class mytesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<TestViewModel>(
        viewModel: TestViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, TestViewModel value) => Page(value,context)
      );
  }
    Widget Page(TestViewModel value, BuildContext context){
      return Scaffold(appBar: AppBar(title: Text(),),);
    }
}      
  