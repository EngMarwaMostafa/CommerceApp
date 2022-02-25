import 'package:commerce_app/utils/custom_text_field.dart';
import 'package:commerce_app/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F6F8),
      body: Padding(
        padding:EdgeInsets.only(left: 20.w,right:28.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 28.h),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                      },
                    icon:
                        const Icon(Icons.arrow_back_ios_outlined, color: K.kColor2),
                  ),
                  SizedBox(width: 24.w,),
                 Text('Contact Us',
                  style: TextStyle(fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                      color:const Color(0xff333333),),),
                ],
              ),
            ),
            SizedBox(height: 55.h,),
            Text('Do you have any question? feel free to contact us.we will get back to you as soon as possible!',
            style: TextStyle(fontSize: 14.sp,
              color:const Color(0xff515C6F),),),
            SizedBox(height: 25.h,),
             const Text('Subject',style: TextStyle(fontSize: 14,
                color:Color(0xff333333),),),
            SizedBox(height: 13.h,),
            Container(
              padding: EdgeInsets.only(
                  left: 20.w, right: 18.w, bottom: 17.h),
              height: 45.h,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Color(0xff707070)),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 3, color: Colors.red),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                //controller:
              //  controller.textEditingControllerEmail,
             //   onchange: (value) {
                 // controller.email.value = value;
               // },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
