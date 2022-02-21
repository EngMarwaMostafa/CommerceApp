import 'package:commerce_app/models/user_model.dart';
import 'package:commerce_app/services/login_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import 'base_controller.dart';

class LoginController extends BaseController {
  final _loginServices = LoginServices();
  TextEditingController textEditingControllerEmailSignUp =
      TextEditingController();
  TextEditingController textEditingControllerPasswordSignUp =
      TextEditingController();
  TextEditingController textEditingControllerNameSignup =
      TextEditingController();
  TextEditingController textEditingControllerEmail = TextEditingController();
  TextEditingController textEditingControllerPassword = TextEditingController();
  TextEditingController textEditingControllerMobileSignUp =
      TextEditingController();
  final emailSignUp = ''.obs;
  final passwordSignUp = ''.obs;
  final nameSignup = ''.obs;
  final email = ''.obs;
  final password = ''.obs;
  final mobileSignUp = ''.obs;

  final check = true.obs;

  checkFun() {
    check.value = !check.value;
  }

  login() async {
    UserModel? userModel =
        await _loginServices.login(email.value, password.value);
  }

  register() async {
    UserModel? userModel = await _loginServices.register(nameSignup.value,
        emailSignUp.value, passwordSignUp.value, mobileSignUp.value);
  }
}
