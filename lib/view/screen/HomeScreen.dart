import 'package:commerce_app/controllers/product_controller.dart';
import 'package:commerce_app/models/product_model.dart';
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
            const CircleItems(),
            Padding(
              padding: EdgeInsets.only(top: 12.h, bottom: 22.h),
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
            FutureBuilder<ProductModel>(
                future: controller.future,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8.0),
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


            Padding(
              padding: EdgeInsets.only(top: 12.h, bottom: 22.h),
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
            FutureBuilder<ProductModel>(
                future: controller.future,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8.0),
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
          ],
        ),
      ),
    );
  }
}
