import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:online_shop_app/constant.dart';
import 'package:online_shop_app/models/product.dart';
import 'package:online_shop_app/screens/details/add_to_cart.dart';
import 'package:online_shop_app/screens/details/color_and_size.dart';
import 'package:online_shop_app/screens/details/counter_with_fav_button.dart';
import 'package:online_shop_app/screens/details/description.dart';
import 'package:online_shop_app/screens/details/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                        top: size.height * 0.12,
                        left: kDefaultPaddding,
                        right: kDefaultPaddding),
                    // height: 500,
                    decoration: const BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: [
                        ColorAndSize(product: product),
                        SizedBox(height: kDefaultPaddding/2,),
                        Description(product: product),
                        SizedBox(height: kDefaultPaddding/2,),
                        CounterWithFavButton(),
                        SizedBox(height: kDefaultPaddding/2,),
                        AddToCart(product: product)
                      ],
                    )),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
