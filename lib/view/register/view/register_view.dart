import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/core/base/view/base_widget.dart';
import '../viewModel/register_view_model.dart';

class UserView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<RegisterViewModel>(
        viewModel: RegisterViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, RegisterViewModel value) =>
            Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black12,
                leading:
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
              ),
              body: getBody(value, context),
            ));
  }

  Column getBody(RegisterViewModel value, BuildContext context) {
    return Column(
      children: [textreg(context), textField(), signButton(value), LinkedText()],
    );
  }

  Container signButton(RegisterViewModel value) {
    return Container(
      width: 500,
      height: 90,
      padding: EdgeInsets.all(16),
      child: ElevatedButton(
          onPressed: () {value.toPost();},
          child: Text(
            'SIGN UP',
            style: TextStyle(color: Colors.white),
          )),
    );
  }

  Container textField() {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      margin: EdgeInsets.all(10),
      child: TextField(),
    );
  }

  Container textreg(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(16),
      child: Text(
        'Register',
        style: TextStyle(color: Colors.black,fontSize: 50),
      ),
    );
  }

  Container LinkedText() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: Center(
          child: Text.rich(TextSpan(
              text: "By signing up, you agree to Photo's ",
              style: TextStyle(fontSize: 16, color: Colors.black),
              children: <TextSpan>[
            TextSpan(
                text: 'Terms of Service',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // code to open / launch terms of service link here
                  }),
            TextSpan(
                text: ' and ',
                style: TextStyle(fontSize: 18, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // code to open / launch privacy policy link here
                        })
                ])
          ]))),
    );
  }
}
