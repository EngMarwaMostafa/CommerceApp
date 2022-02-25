import 'package:commerce_app/controllers/product_controller.dart';
import 'package:commerce_app/models/banner_model.dart';
import 'package:commerce_app/models/category_model.dart';
import 'package:commerce_app/models/product_model.dart';
import 'package:commerce_app/routes/routes.dart';
import 'package:commerce_app/utils/theme.dart';
import 'package:commerce_app/view/screen/search_screen.dart';
import 'package:commerce_app/view/widget/home/CircleItems.dart';
import 'package:commerce_app/view/widget/home/card_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(ProductController());

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85.h,
        backgroundColor:K.kColor2,
        title: const Text('BUY'),
        leading: IconButton(
          onPressed: () {
            Get.toNamed(AppRoute.sideBarScreen);
          },
          icon: Image.asset('assets/menu.png'),
        ),
        actions: [
          SizedBox(
            width: 15.w,
          ),
          /*   Obx(
                      () => Badge(
                    position: BadgePosition.topEnd(top:12.h, end: 3.w),
                    animationDuration: const Duration(milliseconds: 300),
                    animationType: BadgeAnimationType.slide,
                  //  badgeContent:
                    //Text(
                   //   cartController.quantity().toString(),
                   //   style: const TextStyle(color: Colors.white),
                //    ),
                    child: IconButton(
                      onPressed: () {
                      //  Get.toNamed(Routes.ShoppingCartScreen);
                      },
                      icon: Image.asset('assets/cart-home.png'),
                    ),
                  ),
                ),*/
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 40.h,
                child: TextField(
                  onTap: () {
                    Get.to(() => SearchScreen());
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: const Color(0xff515C6F).withOpacity(0.4),
                        )),
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
            SizedBox(height: 10.h),
            FutureBuilder<CategoryModel>(
                future: controller.category,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return SizedBox(
                      height: 100.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data!.data!.length,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (ctx, index) => CircleItems(
                          image: snapshot.data!.data![index].icon,
                          label: snapshot.data!.data![index].name!.en,
                        ),
                      ),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
            FutureBuilder<BannerModel>(
                future: controller.banners,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return SizedBox(
                      height: 130.h,
                      child: ListView.builder(
                          itemCount: snapshot.data!.data!.length,
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, index) => Image.network(
                                snapshot.data!.data![index].banner!,
                              )),
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0.w, right: 8.w, top: 8.h),
              child: Row(
                children: [
                  SizedBox(width: 10.w,),
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
            FutureBuilder<ProductModel>(
                future: controller.futureData,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: SizedBox(
                        height: 300,
                        child: ListView.builder(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data!.data!.length,
                          itemBuilder: (ctx, index) => CardItems(
                              iconTap: () {},
                              onTap: () {},
                              price:
                                  snapshot.data!.data![index].price.toString(),
                              image: snapshot.data!.data![index].coverImg,
                              quantity: snapshot.data!.data![index].quantity
                                  .toString(),
                              name: snapshot.data!.data![index].name!,
                              favIcon: () {},
                              icon: Icon(Icons.favorite)),
                        ),
                      ),
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                }),
            FutureBuilder<BannerModel>(
                future: controller.banners,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return SizedBox(
                      height: 130.h,
                      child: ListView.builder(
                          itemCount: snapshot.data!.data!.length,
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, index) => Image.network(
                                snapshot.data!.data![index].banner!,
                              )),
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                }),
            Padding(
              padding: EdgeInsets.only(left: 8.0.w, right: 8.w, top: 8.h),
              child: Row(
                children: [
                  SizedBox(width: 10.w,),
                  Text(
                    'Most Viewed Products',
                    style: TextStyle(
                        color: const Color(0xff515C6F),
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            FutureBuilder<ProductModel>(
                future: controller.futureData,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return SizedBox(
                      height: 260.h,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data!.data!.length,
                        itemBuilder: (ctx, index) => CardItems(
                            iconTap: () {},
                            onTap: () {},
                            price: snapshot.data!.data![index].price.toString(),
                            image: snapshot.data!.data![index].coverImg,
                            quantity:
                                snapshot.data!.data![index].quantity.toString(),
                            name: snapshot.data!.data![index].names!.en,
                            favIcon: () {},
                            icon: Icon(Icons.favorite)),
                      ),
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                }),
          ],
        ),
      ),
    );
  }
}
