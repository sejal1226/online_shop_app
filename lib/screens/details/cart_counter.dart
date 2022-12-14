import 'package:flutter/material.dart';
import 'package:online_shop_app/constant.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(icon: Icons.remove, press: () {
          if(numOfItems >1 ){
            setState(() {
              numOfItems--;
            });
          }
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddding / 2),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(
            icon: Icons.add,
            press: () {
              setState(() {
                numOfItems++;
              });
            })
      ],
    );
  }

  SizedBox buildOutlineButton({IconData? icon, VoidCallback? press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.zero,
            ),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ))),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
