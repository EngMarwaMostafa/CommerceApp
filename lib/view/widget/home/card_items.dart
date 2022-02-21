
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CardItems extends StatelessWidget {
  const CardItems(
      {Key? key,
        this.onTap,
        this.quantity,
        this.price,
        this.image,
        this.name,
        this.iconTap,
        this.favIcon,
        this.icon})
      : super(key: key);
  final Function()? onTap;
  final String? image;
  final String? price;
  final String? quantity;
  final String? name;
 // final ProductModels? productModels;
  final Function()? iconTap;
  final Function()? favIcon;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 8,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.r)),
          child: Padding(
            padding:  EdgeInsets.all(8.0.w),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 10.h,
                  ),
                  width: 100.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Image.network(
                    image!,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(name!),
                 SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber[700],
                    ),
                    Icon(Icons.star, color: Colors.amber[700]),
                    Icon(Icons.star, color: Colors.amber[700]),
                    Icon(Icons.star, color: Colors.amber[700]),
                    const Icon(Icons.star, color: Colors.grey),
                    const Text(
                      '(4.5)',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'SAR 300',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
               Text(
                  '5% VAT',
                  style: TextStyle(color: Colors.grey, fontSize: 9.sp),
                ),
               SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Text(
                      price!.toString(),
                      style: const TextStyle(color: Colors.green),
                    ),
                     SizedBox(
                      width: 7.w,
                    ),
                    Row(
                      //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                         SizedBox(width: 5.w),
                        //   IconButton(
                        //  onPressed:favIcon,
                        //  icon: controller.isFavourites(productId)
                        //   ? const Icon(
                        //     Icons.favorite,
                        //     color: Colors.red,
                        //  )
                        //   icon: icon!,
                        //   ),
                        SizedBox(width: 5.w),
                        IconButton(
                          onPressed: iconTap,
                          icon: const Icon(
                            Icons.shopping_cart,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}