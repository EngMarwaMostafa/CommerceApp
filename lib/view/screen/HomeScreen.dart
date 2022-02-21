import 'package:commerce_app/utils/theme.dart';
import 'package:commerce_app/view/widget/home/CircleItems.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class   HomeScreen extends StatelessWidget {
  const   HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
  //  final controller = Get.put(ProductController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xffEFEFEF),
              height: 60.h,
              child: Container(
                margin: EdgeInsets.only(
                    top: 7.h, left: 15.w, right: 14.w, bottom: 7.h),
                decoration: BoxDecoration(
                  color: const Color(0xff727C8E),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.r),
                  ),
                ),
                child: TextField(
                  onChanged: (v) {
                   // controller.addSearchToList(v);
                  },
                  decoration: InputDecoration(
                    hintText: "Search Something",
                    prefixIcon: const ImageIcon(
                      AssetImage('assets/searh.png'),
                    ),
                    hintStyle: TextStyle(
                        color: const Color(0xff515C6F).withOpacity(0.4),
                        fontSize: 15.sp),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const CircleItems(
            ),
             Padding(
               padding: EdgeInsets.only(top: 12.h,bottom: 22.h),
               child: SizedBox(
                   width: 375.w,
                   height: 130.h,
                    // child:  banner(
                   //  ),
                 ),
             ),
             SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0.w, right: 8.w, top: 8.h),
              child: Row(
                children: [
                  Text(
                    'National Day Products',
                    style: TextStyle(
                        color: const Color(0xff515C6F),
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
           SizedBox(
              height: 5.h,
            ),

          /*  Obx(
                  () => controller.productList.isEmpty
                  ? const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xff72ecc4),
                  ))
                  : Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: SizedBox(
                  height: 300,
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.isSearched.value
                        ? controller.searchList.length
                        : controller.productList.length,
                    itemBuilder: (ctx, index) => Obx(
                          () => ItemCard(
                        // favIcon:(){
                        //  controller.isFavourites(controller.productList[index].id);
                        //   },
                        //   icon: controller.isFavourites(controller.productList[index].id)
                        //    ? const Icon(
                        //      Icons.favorite,
                        //     color: Colors.red,
                        //  ):
                        //  Icon(Icons.favorite_outline),
                        iconTap: () {
                          CartController.to.addProductsToCart(
                              controller.productList[index]);
                        },
                        onTap: () {
                          Get.to(() => ProductDetailsScreen(
                              productModels:
                              controller.productList[index]));
                        },
                        price: controller.isSearched.value
                            ? controller.searchList[index].price
                            .toString()
                            : controller.productList[index].price
                            .toString(),
                        image: controller.isSearched.value
                            ? controller.searchList[index].coverImg
                            : controller.productList[index].coverImg,
                        quantity: controller.isSearched.value
                            ? controller.searchList[index].quantity
                            .toString()
                            : controller.productList[index].quantity
                            .toString(),
                        name:
                        controller.productList[index].name.toString(),
                      ),
                    ),
                  ),
                ),
              ),
            ), */
            Padding(
              padding: EdgeInsets.only(top: 12.h,bottom: 22.h),
              child: SizedBox(
                width: 375.w,
                height: 130.h,
                // child:  banner(
                //  ),
              ),
            ),

            Text(
              'Most Viewed Products',
              style: TextStyle(
                  color: const Color(0xff515C6F),
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold),
            ),
           SizedBox(
              height: 5.h,
            ),
          /*  Obx(
                  () => controller.productList.isEmpty
                  ? const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xff72ecc4),
                  ))
                  : Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: SizedBox(
                  height: 300,
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.isSearched.value
                        ? controller.searchList.length
                        : controller.productList.length,
                    itemBuilder: (ctx, index) => Obx(
                          () => ItemCard(
                        // favIcon:()
                        //  {
                        //    controller.isFavourites(controller.productList[index].id);
                        //      },
                        //   icon: controller.isFavourites(controller.productList[index].id)
                        //    ? const Icon(
                        //   Icons.favorite,
                        //   color: Colors.red,
                        //      )
                        //    :
                        //     Icon(Icons.favorite_outline),
                        iconTap: () {
                          CartController.to.addProductsToCart(
                              controller.productList[index]);
                        },

                        onTap: () {
                          Get.to(() => ProductDetailsScreen(
                              productModels:
                              controller.productList[index]));
                        },
                        price: controller.isSearched.value
                            ? controller.searchList[index].price
                            .toString()
                            : controller.productList[index].price
                            .toString(),
                        image: controller.isSearched.value
                            ? controller.searchList[index].coverImg
                            : controller.productList[index].coverImg,
                        quantity: controller.isSearched.value
                            ? controller.searchList[index].quantity
                            .toString()
                            : controller.productList[index].quantity
                            .toString(),
                        name:
                        controller.productList[index].name.toString(),
                      ),
                    ),
                  ),
                ),
              ),
            ), */
          ],
        ),
      ),
    );
  }
}
