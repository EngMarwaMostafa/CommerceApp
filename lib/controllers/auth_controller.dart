import 'package:commerce_app/models/user_model.dart';
import 'package:commerce_app/services/login_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import 'base_controller.dart';

class AuthController extends BaseController {
  final _authServices = AuthServices();

  TextEditingController textEditingControllerEmailSignUp =  TextEditingController();
  TextEditingController textEditingControllerPasswordSignUp = TextEditingController();
  TextEditingController textEditingControllerNameSignup = TextEditingController();
  TextEditingController textEditingControllerMobileSignUp = TextEditingController();

  TextEditingController textEditingControllerEmail = TextEditingController();
  TextEditingController textEditingControllerPassword = TextEditingController();

  TextEditingController textEditingControllerEmailForget = TextEditingController();

  final emailSignUp = ''.obs;
  final passwordSignUp = ''.obs;
  final nameSignup = ''.obs;
  final mobileSignUp = ''.obs;

  final email = ''.obs;
  final password = ''.obs;

  final emailForget = ''.obs;

  final check = true.obs;

  checkFun() {
    check.value = !check.value;
  }

  login() async {
    UserModel? userModel =
        await _authServices.login(email.value, password.value);
  }

  register() async {
    UserModel? userModel = await _authServices.register(nameSignup.value,
        emailSignUp.value, passwordSignUp.value, mobileSignUp.value);
  }

  forget() async {
    UserModel? userModel = await _authServices.forget(emailForget.value);
  }

}
