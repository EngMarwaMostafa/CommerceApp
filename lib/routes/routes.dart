import 'package:commerce_app/view/screen/BrandsScreen.dart';
import 'package:commerce_app/view/screen/ContaCtUsSCreen.dart';
import 'package:commerce_app/view/screen/ContaCtUsSCreen.dart';
import 'package:commerce_app/view/screen/auth/forgetPasswordScreen.dart';
import 'package:commerce_app/view/screen/auth/loginScreen.dart';
import 'package:commerce_app/view/widget/SideBar.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoute {
  static const authScreen = '/auth_screen';
  static  const forgetPasswordScreen = '/forgetPasswordScreen';
  static const sideBarScreen ='/sideBarScreen';
  static const brandsScreen ='/brandsScreen';
  static const contactUsScreen ='/contactUsScreen';


   static final routes = [

  GetPage(
  name: AppRoute.authScreen ,
  page: () => const AuthScreen(),
  ),

    GetPage(
      name: AppRoute.forgetPasswordScreen ,
      page: () => const ForgetPasswordScreen(),
    ),

    GetPage(
      name: AppRoute.sideBarScreen,
      page: () => const SideBarScreen(),
    ),

    GetPage(
      name: AppRoute.brandsScreen ,
      page: () => const BrandsScreen(),
    ),

     GetPage(
       name: AppRoute.brandsScreen ,
       page: () => const ContactUsScreen(),
     ),

  ];
}

