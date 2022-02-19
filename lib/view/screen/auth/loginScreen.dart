import 'package:commerce_app/utils/custom_button.dart';
import 'package:commerce_app/utils/custom_text_field.dart';
import 'package:commerce_app/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor4,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: const Text(
                'BUYIT',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 420,
              margin: const EdgeInsets.only(left: 13, right: 13),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 22),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
                            padding:
                                EdgeInsets.only(left: 48, top: 22, bottom: 35)),
                        const Text(
                          'SIGN IN',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Get.toNamed(Routes.signUpScreen);
                          },
                          child: const Text(
                            'SIGN UP',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    const Divider(
                      thickness: 2,
                      color: Color(0xff9a9494),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, bottom: 31),
                      child: Text(
                        'welcome, Please Login to Your Account',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 18),
                      height: 55,
                      child: const CustomTextField(
                        labelText: 'Email id / Mobile Number',
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 18),
                      height: 55,
                      child: const CustomTextField(
                        labelText: 'Password',
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      textColor: Colors.grey,
                      padding: const EdgeInsets.only(left: 200),
                      child: const Text(
                        'Forgot Password?',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff515C6F),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    const CustomButton(
                      Text('SIGNIN'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            const Text(
              'Dont have an account? Swipe right to',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {},
              child: const Text(
                'Create a New Account',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
