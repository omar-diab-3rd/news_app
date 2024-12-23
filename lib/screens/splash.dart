import 'package:flutter/material.dart';
import 'package:news/common/app_images.dart';
import 'package:news/screens/category/category_screen.dart';
import 'package:news/screens/home_screen.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),
     (){Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context)=>CategoryScreen()));} );
    return Container(
      color: Colors.white,
      child:  Stack(
        children: [
          Image.asset(AppImages.bgSplash),
          Center(child: Image.asset(AppImages.splash))
        ],
      ),
    );
  }
}