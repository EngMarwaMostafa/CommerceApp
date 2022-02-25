import 'package:commerce_app/utils/theme.dart';
import 'package:commerce_app/view/screen/BrandsScreen.dart';
import 'package:commerce_app/view/screen/ContaCtUsSCreen.dart';
import 'package:commerce_app/view/screen/OffersScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class SideBarScreen extends StatelessWidget {
  const SideBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              // height:30,
              decoration: const BoxDecoration(
                color: K.kColor2,
              ),
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_outlined,
                  ),
                  color: Colors.white,
                  onPressed: () {
                    Get.back();
                  },
                ),
                title: Text(
                  'MENU',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const ImageIcon(
                AssetImage('assets/brand.png',),
                color: K.kColor2, ),
              onTap: () {
                Get.to(() => const BrandsScreen());
              },
              title: Text(
                'Brand',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff171717)),
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            ListTile(
              leading: const ImageIcon(
                AssetImage('assets/offers.png'),
                color: K.kColor2,),
              title: Text(
                'Offers',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff171717),
                ),
              ),
              onTap: () {
                Get.to(() => const OffersScreen());
              },
            ),
            const Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            SizedBox(
              height: 10.h,
            ),
            ListTile(
              leading: const ImageIcon(
                AssetImage('assets/wishlist.png'),
                color: K.kColor2, ),
              title: Text(
                'Wish List',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff171717),
                ),
              ),
              onTap: () {
                //   Get.to(() => const WishListScreen());
              },
            ),
            const Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            SizedBox(
              height: 10.h,
            ),
            ListTile(
              leading: const ImageIcon(
                AssetImage('assets/about.png'),
                color: K.kColor2, ),
              title: Text(
                'About Us',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff171717),
                ),
              ),
              onTap: () {
                //   Get.to(() => const ContactScreen());
              },
            ),
            const Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            SizedBox(
              height: 10.h,
            ),
            ListTile(
              leading: const ImageIcon(
                AssetImage('assets/contactUs.png'),
                color: K.kColor2,),
              title: Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff171717),
                ),
              ),
              onTap: () {
                  Get.to(() => const ContactUsScreen());
              },
            ),
            const Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            SizedBox(
              height: 10.h,
            ),
            ListTile(
              leading: const ImageIcon(
                AssetImage('assets/profile.png'),
                color: K.kColor2, ),
              title: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff171717),
                ),
              ),
              onTap: () {
                //   Get.to(() => const ContactScreen());
              },
            ),
            const Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            SizedBox(
              height: 10.h,
            ),
            ListTile(
              leading: const ImageIcon(
                AssetImage('assets/logout.png'),
                color: K.kColor2, ),
              title: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff171717),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
