import 'package:commerce_app/controllers/category_controller.dart';
import 'package:commerce_app/models/category_model.dart';
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
      body: FutureBuilder<CategoryModel>(
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
                            height: 60.h,
                            width: 60.w,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(shape: BoxShape.circle),
                            child: Image.network( snapshot.data!.data![index].icon!,
                                height: double.infinity,
                                width: double.infinity,
                                fit: BoxFit.contain),
                          ),
                              title: Text("${snapshot.data!.data![index].name!.en}"),
                            trailing: const Icon(Icons.arrow_forward_ios_rounded)),
                        const Divider()
                      ],
                    ),
                  ));
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
