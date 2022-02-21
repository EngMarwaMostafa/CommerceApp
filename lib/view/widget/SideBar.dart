
import 'package:commerce_app/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class SideBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color:K.kColor2,
              ),
              child:  ListTile(
                leading:  IconButton(
                  icon: const Icon(Icons.arrow_back_ios_outlined,),
                  color: Colors.white,
                  onPressed: () {
                    Get.back();
                  },
                ),
                title:Text('MENU',style:
                TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 30.sp,
                  color:Colors.white,
                ),),
              ),
            ),
            ListTile(
                leading:  IconButton(
                  icon:  const Icon(Icons.perm_identity,
                    size: 30,),
                  color: Colors.blue,
                  onPressed: () {
                    Get.back();
                  },
                ),
                title: Text('Profile',
                  style: TextStyle(fontSize: 20.sp,
                      fontWeight: FontWeight.bold),),
                onTap: () {
                 //0 Get.toNamed(Routes.profileScreen);
                }),
            const Divider(
              color:  Colors.grey,
              thickness: 2,
            ),
             SizedBox(
              height: 10.h,
            ),
            ListTile(
                leading: const Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: Colors.blue,
                ),
                title:  Text('My Cart',
                  style: TextStyle(fontSize: 20.sp,
                      fontWeight: FontWeight.bold),),
                onTap: () {
               //   Get.toNamed(Routes.ShoppingCartScreen);
                }),
            const Divider(
              color: Colors.grey,
              thickness: 2,
            ),
             SizedBox(
              height: 10.h,
            ),
            ListTile(
                leading: const Icon(
                  Icons.perm_identity,
                  size: 30,
                  color: Colors.blue,
                ),
                title: Text('My Favorites',
                  style: TextStyle(fontSize: 20.sp,
                      fontWeight: FontWeight.bold),),
                onTap: () {
                //  Get.toNamed(Routes.favoriteScreen);
                }),

          ], ),
      ),
    );
  }
}

