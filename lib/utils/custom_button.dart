
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(Text text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
          child:(
          FlatButton(
            minWidth: 320,
            height: 48,
            textColor: Colors.white,
            onPressed: () {},
            child: Text(''),
          )),
          ),
    );


  }
}