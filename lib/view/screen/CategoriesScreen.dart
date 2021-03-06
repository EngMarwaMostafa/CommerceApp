import 'package:commerce_app/controllers/category_controller.dart';
import 'package:commerce_app/models/category_model.dart';
import 'package:commerce_app/utils/theme.dart';
import 'package:commerce_app/view/screen/BrandsScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoryController());
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 72.h,
            color: K.kColor2,
            // padding: EdgeInsets.only(left: 40.w, top: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(backgroundColor: K.kColor8),
                    child: Text(
                      'CATEGORIES',
                      style: TextStyle(fontSize: 18.sp, color: K.kColor5),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                Container(
                  // padding: const EdgeInsets.only(bottom:18 ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      Get.to(() =>
                      const BrandsScreen());
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.white),
                    child: Text(
                      'BRANDS',
                      style: TextStyle(fontSize: 18.sp, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          FutureBuilder<CategoryModel>(
              future: controller.future,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data!.data!.length,
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (ctx, index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Container(
                                    height: 65.h,
                                    width: 65.w,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle),
                                    child: Image.network(
                                        snapshot.data!.data![index].icon!,
                                        height: double.infinity,
                                        width: double.infinity,
                                        fit: BoxFit.contain),
                                  ),
                                  title: Text(
                                    "${snapshot.data!.data![index].name!.en}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.sp,
                                      color: const Color(0xff515C6F),
                                    ),
                                  ),
                                  trailing: const Icon(
                                      Icons.arrow_forward_ios_rounded),
                                ),
                                const Divider(),
                              ],
                            ),
                          ));
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              }),
        ],
      ),
    );
  }
}
