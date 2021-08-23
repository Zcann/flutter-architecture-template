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
              body: getBody(value, context),
            ));
  }

  Widget getBody(RegisterViewModel value, BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: <Widget>[
        Container(
            //color: Colors.blue,
            alignment: Alignment.centerLeft,
            child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.of(context).pop())),
        SizedBox(height: 10),
        Container(
          //color: Colors.brown,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Register',
            style: TextStyle(fontSize: 50),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              border: Border.all(width: 3),
              shape: BoxShape.rectangle,
              color: Colors.white),
          child: TextField(
            decoration: InputDecoration(hintText: 'phone'),
          ),
        ),
        SizedBox(height: 40),
        Container(decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
          width: 400,
          height: 50,
          //color: Colors.black,
          child: ElevatedButton(
              child: Text(
                'SIGNUP',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: (null)),
        ),
        Container(child: LinkedText())
      ])),
    );

  }
   Widget LinkedText() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: Center(
      child: Text.rich(
        TextSpan(
          text: "By signing up, you agree to Photo's ", style: TextStyle(
          fontSize: 16, color: Colors.black
        ),
          children: <TextSpan>[
            TextSpan(
              text: 'Terms of Service', style: TextStyle(
              fontSize: 16, color: Colors.black,
              decoration: TextDecoration.underline,
            ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                // code to open / launch terms of service link here
                }
            ),
            TextSpan(
              text: ' and ', style: TextStyle(
              fontSize: 18, color: Colors.black
            ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Privacy Policy', style: TextStyle(
                  fontSize: 18, color: Colors.black,
                  decoration: TextDecoration.underline
                ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                    // code to open / launch privacy policy link here
                      }
                )
              ]
            )
          ]
        )
      )
      ),
    );
  }
}
