import 'package:commerce_app/controllers/auth_controller.dart';
import 'package:commerce_app/utils/custom_text_field.dart';
import 'package:commerce_app/utils/theme.dart';
import 'package:commerce_app/view/screen/auth/forgetPasswordScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthController());
    return Scaffold(
      backgroundColor: K.kColor4,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 67.h, bottom: 43.h),
              child: Text(
                'BUYIT',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30.sp,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            //   const SizedBox(height: 43),
            Padding(
              padding: EdgeInsets.all(8.0.w),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(5.r),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  controller.checkFun();
                                },
                                child: Text(
                                  'SIGN IN',
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Obx(() => controller.check.value
                                  ? Container(
                                      height: 5.h,
                                      width: 50.w,
                                      color: K.kColor2)
                                  : Container())
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  controller.checkFun();
                                },
                                child: Text(
                                  'SIGN UP',
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Obx(
                                () => controller.check.value
                                    ? Container()
                                    : Container(
                                        height: 5.h,
                                        width: 50.w,
                                        color: K.kColor2),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                      color: Color(0xff9a9494),
                    ),
                    Obx(
                      () => controller.check.value
                          ? Material(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 17.h,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: 15.w, bottom: 29.h),
                                    child: Text(
                                      'Welcome, Please Login to Your Account',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.sp,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 15.w, right: 10.w, bottom: 18.h),
                                    height: 60.h,
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
                                    padding: EdgeInsets.only(
                                        left: 10.w, right: 10.w, bottom: 18.h),
                                    height: 60.h,
                                    child: CustomTextField(
                                      controller: controller
                                          .textEditingControllerPassword,
                                      onchange: (value) {
                                        controller.password.value = value;
                                      },
                                      labelText: 'Password',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 15.w),

                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 22.h, bottom: 18.h),
                                    child: SizedBox(
                                      width: 320.w,
                                      height: 48.h,
                                      child: TextButton(
                                        onPressed: () {
                                          controller.textEditingControllerEmail
                                              .clear();
                                          controller
                                              .textEditingControllerPassword
                                              .clear();
                                          controller.login();
                                        },
                                        style: TextButton.styleFrom(
                                            backgroundColor: K.kColor1),
                                        child: Text(
                                          "SIGN IN",
                                          style: TextStyle(
                                              fontSize: 18.sp,
                                              color: K.kColor5),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Material(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 17.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: 15.w, bottom: 29.h),
                                      child: Text(
                                        'Welcome, Please Create Your Account',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.sp,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 15.w,
                                          right: 10.w,
                                          bottom: 18.h),
                                      height: 60.h,
                                      child: CustomTextField(
                                        controller: controller
                                            .textEditingControllerNameSignup,
                                        onchange: (value) {
                                          controller.nameSignup.value = value;
                                        },
                                        labelText: 'Full Nme',
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 15.w,
                                          right: 10.w,
                                          bottom: 18.h),
                                      height: 60.h,
                                      child: CustomTextField(
                                        controller: controller
                                            .textEditingControllerMobileSignUp,
                                        onchange: (value) {
                                          controller.mobileSignUp.value = value;
                                        },
                                        labelText: 'Mobile Number',
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 10.w,
                                          right: 10.w,
                                          bottom: 18.h),
                                      height: 60.h,
                                      child: CustomTextField(
                                        controller: controller
                                            .textEditingControllerPasswordSignUp,
                                        onchange: (value) {
                                          controller.passwordSignUp.value =
                                              value;
                                        },
                                        labelText: 'Password',
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          left: 10.w,
                                          right: 10.w,
                                          bottom: 18.h),
                                      height: 60.h,
                                      child: CustomTextField(
                                        controller: controller
                                            .textEditingControllerEmailSignUp,
                                        onchange: (value) {
                                          controller.emailSignUp.value = value;
                                        },
                                        labelText: 'Email',
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 18.h, bottom: 27.h),
                                      child: SizedBox(
                                        width: 320.w,
                                        height: 48.h,
                                        child: TextButton(
                                          onPressed: () {
                                            controller
                                                .textEditingControllerPasswordSignUp
                                                .clear();
                                            controller
                                                .textEditingControllerEmailSignUp
                                                .clear();
                                            controller
                                                .textEditingControllerNameSignup
                                                .clear();
                                            controller
                                                .textEditingControllerMobileSignUp
                                                .clear();
                                            controller.register();
                                          },
                                          style: TextButton.styleFrom(
                                              backgroundColor: K.kColor1),
                                          child: Text(
                                            "SIGN UP",
                                            style: TextStyle(
                                                fontSize: 18.sp,
                                                color: K.kColor5),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            ),
            /*    const SizedBox(
              height: 38,
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
            ), */
          ],
        ),
      ),
    );
  }
}
