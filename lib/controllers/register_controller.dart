
import 'package:commerce_app/models/user_model.dart';
import 'package:commerce_app/services/register_servicse.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import 'base_controller.dart';

class RegisterController extends BaseController {
  final _registerServices = RegisterServices();
  TextEditingController textEditingControllerName = TextEditingController();
  TextEditingController textEditingControllerEmail = TextEditingController();
  TextEditingController textEditingControllerPassword = TextEditingController();
  TextEditingController textEditingControllerMobile = TextEditingController();

  final name = ''.obs;
  final email = ''.obs;
  final password = ''.obs;
  final mobile = ''.obs;
  final check = true.obs;

  checkFun() {
    check.value =! check.value;
  }

  register() async {
    UserModel? userModel = await _registerServices.
    register(name.value, email.value, password.value, mobile.value);
  }

}
