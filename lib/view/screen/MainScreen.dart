import 'package:badges/badges.dart';
import 'package:commerce_app/controllers/MainController.dart';
import 'package:commerce_app/routes/routes.dart';
import 'package:commerce_app/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class MainScreen extends StatelessWidget {
 MainScreen({Key? key}) : super(key: key);

  final controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
            () {
          return Scaffold(
            backgroundColor: Colors.white,
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor:  Colors.black,
              currentIndex: controller.currentIndex.value,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  activeIcon: ImageIcon(
                    AssetImage('assets/categories.png'),
                    color:Colors.white,
                  ),
                  icon: ImageIcon(
                    AssetImage('assets/categories.png'),
              color: K.kColor1,
                  ),
                  label: 'categories',
                ),
                BottomNavigationBarItem(
                  activeIcon: ImageIcon(
                    AssetImage('assets/offers.png'),
                    color:Colors.white,
                  ),
                  icon: ImageIcon(
                    AssetImage('assets/offers.png'),
                    color: K.kColor1,
                  ),
                  label: 'Offers',
                ),
                BottomNavigationBarItem(
                  activeIcon: ImageIcon(
                    AssetImage('assets/home.png'),
                    color:Colors.white,
                  ),
                  icon: ImageIcon(
                    AssetImage('assets/home.png'),
                    color: K.kColor1,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  activeIcon: ImageIcon(
                    AssetImage('assets/MyOrders.png'),
                    color:Colors.white,
                  ),
                  icon: ImageIcon(
                    AssetImage('assets/MyOrders.png'),
                    color: K.kColor1,
                  ),
                  label: 'MyOrders',
                ),
              ],
              onTap: (index) {
              controller.currentIndex.value = index;
              },
            ),
            body: IndexedStack(
            index: controller.currentIndex.value,
             children: controller.tabs,
            ),
          );
        },
      ),
    );
  }
}
