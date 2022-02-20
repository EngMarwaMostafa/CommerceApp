import 'package:commerce_app/controller/base_controller.dart';
import 'package:commerce_app/models/user_model.dart';
import 'package:commerce_app/services/login_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends BaseController {
  final _services = LoginServices();
  TextEditingController textEditingControllerEmail = TextEditingController();
  TextEditingController textEditingControllerPassword = TextEditingController();
  final email = ''.obs;
  final password = ''.obs;

  login() async {
    UserModel? userModel = await _services.login(email.value, password.value);
  }
}
