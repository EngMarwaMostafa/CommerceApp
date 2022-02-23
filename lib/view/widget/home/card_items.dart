import 'package:commerce_app/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
    return Card(
      elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: 100.h,
            width: 150.w,
            child: Align(
              alignment: Alignment.center,
              child: Image.network(
                image!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(name!),
          SizedBox(
            height: 5.h,
          ),
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 12.sp,
            itemPadding: const EdgeInsets.symmetric(horizontal: 0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price!.toString(),
                style: TextStyle(color: K.kColor2, fontSize: 20.sp),
              ),
              SizedBox(
                width: 20.w,
              ),
              const Text(
                'SAR 300',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Text(
            '5% VAT',
            style: TextStyle(color: Colors.grey, fontSize: 9.sp),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: favIcon,
                //  icon: controller.isFavourites(productId)
                // ? const Icon(
                //  Icons.favorite,
                //   color: Colors.red,
                //  )
                icon: icon!,
              ),
              Container(
                height: 40.h,
                width: 100.w,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.shopping_cart_rounded,
                      color: Colors.white,
                    ),
                    Text(
                      'Add to Cart',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              /* IconButton(
                onPressed: iconTap,
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
              ),*/
            ],
          ),
        ],
      ),
    );
  }
}
