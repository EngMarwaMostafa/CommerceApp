// import 'package:commerce_app/controllers/auth_controller.dart';
// import 'package:commerce_app/controllers/register_controller.dart';
// import 'package:commerce_app/utils/custom_text_field.dart';
// import 'package:commerce_app/utils/theme.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_instance/src/extension_instance.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
//
// class RegisterScreen extends StatelessWidget {
//   const RegisterScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(RegisterController());
//     return Scaffold(
//       backgroundColor: K.kColor4,
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Container(
//               padding: const EdgeInsets.only(top: 67, bottom: 43),
//               child: const Text(
//                 'BUYIT',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                   fontSize: 30,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             //   const SizedBox(height: 43),
//             Container(
//               height: 460,
//               margin: const EdgeInsets.only(left: 13, right: 13),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(5),
//               ),
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 20, vertical: 10),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Column(
//                           children: [
//                             GestureDetector(
//                               onTap: () {
//                                 controller.checkFun();
//                               },
//                               child: const Text(
//                                 'Sign In',
//                                 style: TextStyle(
//                                     fontSize: 18,
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                             SizedBox(height: 5),
//                             Obx(() => controller.check.value
//                                 ? Container(
//                                     height: 5, width: 50, color: K.kColor2)
//                                 : Container())
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             GestureDetector(
//                               onTap: () {
//                                 controller.checkFun();
//                               },
//                               child: const Text(
//                                 'Sign Up',
//                                 style: TextStyle(
//                                     fontSize: 18,
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                             SizedBox(height: 5),
//                             Obx(
//                               () => controller.check.value
//                                   ? Container()
//                                   : Container(
//                                       height: 5, width: 50, color: K.kColor2),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   const Divider(
//                     thickness: 2,
//                     color: Color(0xff9a9494),
//                   ),
//                   Obx(
//                     () => controller.check.value
//                         ? Material(
//                             child: Column(
//                               children: [
//                                 const SizedBox(
//                                   height: 17,
//                                 ),
//                                 const Padding(
//                                   padding:
//                                       EdgeInsets.only(right: 15, bottom: 29),
//                                   child: Text(
//                                     'Welcome, Please Create Your Account',
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 15,
//                                       color: Colors.black,
//                                     ),
//                                   ),
//                                 ),
//                                 Container(
//                                   padding: const EdgeInsets.only(
//                                       left: 15, right: 10, bottom: 18),
//                                   height: 60,
//                                   child: CustomTextField(
//                                     controller:
//                                         controller.textEditingControllerName,
//                                     onchange: (value) {
//                                       controller.name.value = value;
//                                     },
//                                     labelText: 'Full Nme',
//                                   ),
//                                 ),
//                                 Container(
//                                   padding: const EdgeInsets.only(
//                                       left: 15, right: 10, bottom: 18),
//                                   height: 60,
//                                   child: CustomTextField(
//                                     controller:
//                                         controller.textEditingControllerMobile,
//                                     onchange: (value) {
//                                       controller.mobile.value = value;
//                                     },
//                                     labelText: 'Mobile Number',
//                                   ),
//                                 ),
//                                 Container(
//                                   padding: const EdgeInsets.only(
//                                       left: 10, right: 10, bottom: 18),
//                                   height: 60,
//                                   child: CustomTextField(
//                                     controller: controller
//                                         .textEditingControllerPassword,
//                                     onchange: (value) {
//                                       controller.password.value = value;
//                                     },
//                                     labelText: 'Password',
//                                   ),
//                                 ),
//                                 Container(
//                                   padding: const EdgeInsets.only(
//                                       left: 10, right: 10, bottom: 18),
//                                   height: 60,
//                                   child: CustomTextField(
//                                     controller: controller
//                                        .textEditingControllerEmail,
//                                     onchange: (value) {
//                                       controller.email.value = value;
//                                     },
//                                     labelText: 'Email',
//                                   ),
//                                 ),
//                                 TextButton(
//                                   onPressed: () {
//                                     controller.textEditingControllerPassword.clear();
//                                     controller.textEditingControllerEmail.clear();
//                                     controller.textEditingControllerName.clear();
//                                     controller.textEditingControllerMobile.clear();
//                                     controller.register();
//                                   },
//                                   style: TextButton.styleFrom(
//                                       backgroundColor: K.kColor1),
//                                   child: const Text(
//                                     "SIGN UP",
//                                     style: TextStyle(
//                                         fontSize: 18, color: K.kColor5),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                     ):ContextAction(),
//                   ),
//                     const SizedBox(
//                       height: 27,
//                     ),
//                     Row(
//                       children: [
//                         const Text(
//                           'Already have an account',
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold),
//                           textAlign: TextAlign.center,
//                         ),
//                         GestureDetector(
//                           onTap: () {},
//                           child: const Text(
//                             'Sign In',
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.bold),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       ],
//                     ),
//                  ], ),
//             ),Material(
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 17,
//             ),
//             const Padding(
//               padding:
//               EdgeInsets.only(right: 15, bottom: 29),
//               child: Text(
//                 'Welcome, Please Login to Your Account',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 15,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.only(
//                   left: 15, right: 10, bottom: 18),
//               height: 60,
//               child: CustomTextField(
//                 controller:
//                 controller.textEditingControllerEmail,
//                 onchange: (value) {
//                   controller.email.value = value;
//                 },
//                 labelText: 'Email id / Mobile Number',
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.only(
//                   left: 10, right: 10, bottom: 18),
//               height: 60,
//               child: CustomTextField(
//                 controller: controller
//                     .textEditingControllerPassword,
//                 onchange: (value) {
//                   controller.password.value = value;
//                 },
//                 labelText: 'Password',
//               ),
//             ),
//             Align(
//               alignment: Alignment.bottomRight,
//               child: GestureDetector(
//                 onTap: () {},
//                 child: const Text(
//                   'Forgot Password?',
//                   textAlign: TextAlign.end,
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Color(0xff515C6F),
//                   ),
//                 ),
//               ),
//             ),
//             TextButton(
//               onPressed: () {
//                 controller.textEditingControllerPassword
//                     .clear();
//                 controller.textEditingControllerEmail
//                     .clear();
//                 controller.login();
//               },
//               style: TextButton.styleFrom(
//                   backgroundColor: K.kColor1),
//               child: const Text(
//                 "SIGN IN",
//                 style: TextStyle(
//                     fontSize: 18, color: K.kColor5),
//               ),
//             ),
//           ],
//         ),
//       )
//           : Material(
//     child: Column(
//     children: [
//     const SizedBox(
//       height: 17,
//     ),
//     const Padding(
//     padding:
//     EdgeInsets.only(right: 15, bottom: 29),
//     child: Text(
//     'Welcome, Please Create Your Account',
//     style: TextStyle(
//     fontWeight: FontWeight.bold,
//     fontSize: 15,
//     color: Colors.black,
//     ),
//     ),
//     ),
//     Container(
//     padding: const EdgeInsets.only(
//     left: 15, right: 10, bottom: 18),
//     height: 60,
//     child: CustomTextField(
//     controller: registerController
//         .textEditingControllerName,
//     onchange: (value) {
//     registerController.name.value = value;
//     },
//     labelText: 'Full Nme',
//     ),
//     ),
//     Container(
//     padding: const EdgeInsets.only(
//     left: 15, right: 10, bottom: 18),
//     height: 60,
//     child: CustomTextField(
//     controller: registerController
//         .textEditingControllerMobile,
//     onchange: (value) {
//     registerController.mobile.value = value;
//     },
//     labelText: 'Mobile Number',
//     ),
//     ),
//     Container(
//     padding: const EdgeInsets.only(
//     left: 10, right: 10, bottom: 18),
//     height: 60,
//     child: CustomTextField(
//     controller: controller
//         .textEditingControllerPassword,
//     onchange: (value) {
//     controller.password.value = value;
//     },
//     labelText: 'Password',
//     ),
//     ),
//     Container(
//     padding: const EdgeInsets.only(
//     left: 10, right: 10, bottom: 18),
//     height: 60,
//     child: CustomTextField(
//     controller:
//     controller.textEditingControllerEmail,
//     onchange: (value) {
//     controller.email.value = value;
//     },
//     labelText: 'Email',
//     ),
//     ),
//     TextButton(
//     onPressed: () {
//     registerController
//         .textEditingControllerPassword
//         .clear();
//     registerController
//         .textEditingControllerEmail
//         .clear();
//     registerController.textEditingControllerName
//         .clear();
//     registerController
//         .textEditingControllerMobile
//         .clear();
//     registerController.register();
//     },
//     style: TextButton.styleFrom(
//     backgroundColor: K.kColor1),
//     child: const Text(
//     "SIGN UP",
//     style: TextStyle(
//     fontSize: 18, color: K.kColor5),
//     ),
//     ),
//     ],
//     ),
//     ),
//     const SizedBox(
//     height: 38,
//     ),
//     const Text(
//     'Dont have an account? Swipe right to',
//     style: TextStyle(
//     color: Colors.white,
//     fontSize: 15,
//     fontWeight: FontWeight.bold),
//     textAlign: TextAlign.center,
//     ),
//     const SizedBox(
//     height: 5,
//     ),
//     GestureDetector(
//     onTap: () {},
//     child: const Text(
//     'Create a New Account',
//     style: TextStyle(
//     color: Colors.black,
//     fontSize: 15,
//     fontWeight: FontWeight.bold),
//     textAlign: TextAlign.center,
//     ),
//     ),
//                 ],
//               ),
//             ),
//
//     );
//
//   }
// }
