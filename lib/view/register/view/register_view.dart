import 'package:flutter/material.dart';
import 'package:fluttermvvmtemplate/view/register/viewModel/register_view_model.dart';

class UserView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        
        children: [IconButton(icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
          Align(
            child: 
              Text('Register',style: TextStyle(fontSize: 50)),
              alignment: Alignment.centerLeft,
              
          ),
          TextField(),
          RaisedButton(onPressed: toPost()),
          Text('terms of service')
        ],
      ),
    ));
  }
}
