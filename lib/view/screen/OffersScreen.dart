import 'package:commerce_app/controllers/product_controller.dart';
import 'package:commerce_app/models/banner_model.dart';
import 'package:commerce_app/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());
    return Scaffold(
      backgroundColor: const Color(0xffF5F6F8),
      appBar: AppBar(
        toolbarHeight: 77.h,
        title: const Text('Offers'),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_outlined, color: K.kColor8),
        ),
      ),
  body: SingleChildScrollView(
    child :Column(
        children: [
      FutureBuilder<BannerModel>(
          future: controller.banners,
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
                         Image.network(
                  snapshot.data!.data![index].banner!,
                  ),
                       SizedBox(height: 28.h,),
                      ],
                    ),
                  ));
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
      ),
          FutureBuilder<BannerModel>(
            future: controller.banners,
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
                          Image.network(
                            snapshot.data!.data![index].banner!,
                          ),
                          SizedBox(height: 28.h,),
                        ],
                      ),
                    ));
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
      ],
      ),
  ),
    );
  }
}
