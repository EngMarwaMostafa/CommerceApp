import 'package:commerce_app/controllers/search_controller.dart';
import 'package:commerce_app/models/product_model.dart';
import 'package:commerce_app/view/widget/home/card_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SearchController());
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 40.h,
              child: TextField(
                onChanged: (v) {
                  controller.onFilter(v);
                },
                onSubmitted: (v) {
                  controller.onFilter(v);
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: const Color(0xff515C6F).withOpacity(0.4),
                      )),
                  focusedBorder: OutlineInputBorder(
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
          SizedBox(
            height: 100.h,
          ),
          Obx(() => controller.isSearch.value
              ? FutureBuilder<ProductModel>(
                  future: controller.data,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return SizedBox(
                          height: 260.h,
                          child: Obx(
                            () => ListView.builder(
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.isSearch.value
                                  ? snapshot.data!.data!.length
                                  : 0,
                              itemBuilder: (ctx, index) => CardItems(
                                  iconTap: () {},
                                  onTap: () {},
                                  price: controller.isSearch.value
                                      ? snapshot.data!.data![index].price
                                          .toString()
                                      : null,
                                  image: controller.isSearch.value
                                      ? snapshot.data!.data![index].coverImg
                                      : null,
                                  quantity: controller.isSearch.value
                                      ? snapshot.data!.data![index].quantity
                                          .toString()
                                      : null,
                                  name: controller.isSearch.value
                                      ? snapshot.data!.data![index].names!.en
                                      : null,
                                  favIcon: () {},
                                  icon: Icon(Icons.favorite)),
                            ),
                          ));
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  })
              : Container())
        ],
      ),
    );
  }
}
