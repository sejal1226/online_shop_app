import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shop_app/constant.dart';
import 'package:online_shop_app/models/product.dart';
import 'package:online_shop_app/screens/details/detail_screen.dart';
import 'package:online_shop_app/screens/home/categories.dart';
import 'package:online_shop_app/screens/home/item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddding),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Categories(),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddding),
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPaddding,
                crossAxisSpacing: kDefaultPaddding,
                childAspectRatio: 0.73),
            itemBuilder: (context, index) => ItemCard(
              product: products[index],
              press: () =>Get.to(() => DetailScreen(product: products[index])),
            ),
          ),
        )),
      ],
    );
  }
}
