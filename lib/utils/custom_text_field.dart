import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required String labelText, this.form}) : super(key: key);
 final Function? form;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
          child: TextField(
            decoration: InputDecoration(
              labelText: '',
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Color(0xff707070A6)),
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.red),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
    );
  }
}
