import 'package:commerce_app/controller/login_controller.dart';
import 'package:commerce_app/utils/custom_text_field.dart';
import 'package:commerce_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      backgroundColor: K.kColor4,
      body: SingleChildScrollView(
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
              height: 400,
              margin: const EdgeInsets.only(left: 13, right: 13),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                controller.checkFun();
                              },
                              child: const Text(
                                'SIGN IN',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 5),
                            Obx(() => controller.check.value
                                ? Container(
                                    height: 5, width: 50, color: K.kColor2)
                                : Container())
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                controller.checkFun();
                              },
                              child: const Text(
                                'SIGN UP',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 5),
                            Obx(() => controller.check.value
                                ? Container()
                                : Container(
                                    height: 5, width: 50, color: K.kColor2))
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                    color: Color(0xff9a9494),
                  ),
                  Obx(() => controller.check.value
                      ? Material(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 17,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 15, right: 15, bottom: 31),
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
                                child: CustomTextField(
                                  controller:
                                      controller.textEditingControllerEmail,
                                  onchange: (value) {
                                    controller.email.value = value;
                                  },
                                  labelText: 'Email id / Mobile Number',
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, bottom: 18),
                                height: 55,
                                child: CustomTextField(
                                  controller:
                                      controller.textEditingControllerPassword,
                                  onchange: (value) {
                                    controller.password.value = value;
                                  },
                                  labelText: 'Password',
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: const Text(
                                    'Forgot Password?',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff515C6F),
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  controller.textEditingControllerPassword
                                      .clear();
                                  controller.textEditingControllerEmail.clear();
                                  controller.login();
                                },
                                style: TextButton.styleFrom(
                                    backgroundColor: K.kColor1),
                                child: const Text("Sign up",
                                    style: TextStyle(
                                        fontSize: 18, color: K.kColor5)),
                              )
                            ],
                          ),
                        )
                      : Material(
                          child: Column(
                            children: [
                              //اكتبى هتااا الكود الجديد


                            ],
                          ),
                        )),
                ],
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
