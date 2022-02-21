
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleItems extends StatelessWidget {
  const CircleItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.w,right: 32.w,bottom:8.h,top: 15.h),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 37.r,
                    child: const Icon
                      (Icons.open_with_rounded, color: Colors.black,),
                  ),
                  Text('Accessories'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 32,bottom: 8,top: 15),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 37.r,
                    child: const Icon
                      (Icons.open_with_rounded, color: Colors.black,),
                  ),
                  Text('Accessories'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 32,bottom: 8,top: 15),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 37.r,
                    child: const Icon
                      (Icons.open_with_rounded, color: Colors.black,),
                  ),
                  Text('Accessories'),
                ],
              ),
            ),
          ],
        ),
      );
  }
}
