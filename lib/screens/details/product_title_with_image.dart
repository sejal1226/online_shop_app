import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:online_shop_app/constant.dart';
import 'package:online_shop_app/models/product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: kWhiteColor),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: kWhiteColor, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: kDefaultPaddding,
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(text: "Price\n"),
                  TextSpan(
                    text: "\u20b9${product.price}",
                    style: Theme.of(context).textTheme.headline3?.copyWith(
                        color: kWhiteColor, fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
              SizedBox(
                width: kDefaultPaddding,
              ),
              Expanded(
                  child: Hero(
                    tag: "${product.id}",
                    child: Image.asset(
                product.image,
                fit: BoxFit.fill,
              ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
