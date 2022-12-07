import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop_app/constant.dart';
import 'package:online_shop_app/screens/home/body.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(),
      body: Body(),
    );
  }
  AppBar buildAppBar(){
    return  AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          onPressed: (){},
          icon:SvgPicture.asset("assets/icons/search.svg", color: kTextColor,),),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/cart.svg", color: kTextColor,),),
        SizedBox(width: kDefaultPaddding /2,)
      ],
    );
  }
}
