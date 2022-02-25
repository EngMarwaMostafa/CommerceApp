import 'package:commerce_app/routes/routes.dart';
import 'package:commerce_app/view/screen/MainScreen.dart';
import 'package:commerce_app/view/screen/auth/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
    designSize : const Size(375,800),
      builder:  () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     //   initialRoute: AppRoute.sideBarScreen,
     getPages: AppRoute.routes,
        home: MainScreen(),
      ),
    );
  }
}
