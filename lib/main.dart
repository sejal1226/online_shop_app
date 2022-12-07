import 'dart:io';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:online_shop_app/constant.dart';
import 'package:online_shop_app/screens/home/home_screen.dart';

void main() {
  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    if (kReleaseMode) exit(1);
  };
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: Theme
              .of(context)
              .textTheme
              .apply(bodyColor: kTextColor),
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen());
  }
}
