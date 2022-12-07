import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop_app/constant.dart';
import 'package:online_shop_app/screens/details/cart_counter.dart';

class CounterWithFavButton extends StatelessWidget {
  const CounterWithFavButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CartCounter(),
        Container(height: 32,width: 32,
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: kHeartColor,
              shape: BoxShape.circle
          ),
          child: SvgPicture.asset("assets/icons/heart.svg"),)
      ],
    );
  }
}

