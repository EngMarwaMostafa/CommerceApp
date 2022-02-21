import 'package:commerce_app/models/user_model.dart';
import 'package:commerce_app/services/login_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import 'base_controller.dart';

class LoginController extends BaseController {
  final _loginServices = LoginServices();
  TextEditingController textEditingControllerEmail = TextEditingController();
  TextEditingController textEditingControllerPassword = TextEditingController();
  final email = ''.obs;
  final password = ''.obs;
  final check = true.obs;

  checkFun() {
    check.value =! check.value;
  }

  login() async {
    UserModel? userModel = await _loginServices.
    login(email.value, password.value);
  }
}
