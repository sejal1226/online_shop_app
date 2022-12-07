import 'package:flutter/material.dart';
import 'package:online_shop_app/constant.dart';
import 'package:online_shop_app/models/product.dart';

class ItemCard extends StatelessWidget {
  final Product? product;
  final GestureTapCallback press;

  const ItemCard({Key? key, this.product, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:press,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(kDefaultPaddding),
            // height: 180,
            // width: 160,
            decoration: BoxDecoration(
                color: product?.color, borderRadius: BorderRadius.circular(16)),
            child: Hero(
              tag: "${product?.id}",
                child: Image.asset("${product?.image}")),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPaddding / 4),
          child: Text(
            "${product?.title}",
            style: TextStyle(color: kTextLightColor),
          ),
        ),
        Text(
          "\u20b9${product?.price}",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
