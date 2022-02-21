import 'package:commerce_app/controllers/auth_controller.dart';
import 'package:commerce_app/utils/custom_text_field.dart';
import 'package:commerce_app/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthController());
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
                    fontSize: 40,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 54),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                child: Column(
                  children: [
                    const Text(
                      'Forgot Password',
                      style: TextStyle(
                          fontSize: 22,
                          color: K.kColor4,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 28,
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
                        'Enter the email address you used to create your account and we'
                            'will email you a link reset your password',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffAEAEAE),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10),
                      child: CustomTextField(
                        controller: controller
                            .textEditingControllerEmailForget,
                        onchange: (value) {
                          controller.emailSignUp.value = value;
                        },
                        labelText: 'Email',
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        controller
                            .textEditingControllerEmailForget
                            .clear();
                        controller.register();
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: K.kColor1),
                      child: const Text(
                        "RESET",
                        style: TextStyle(
                            fontSize: 18, color: K.kColor5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
