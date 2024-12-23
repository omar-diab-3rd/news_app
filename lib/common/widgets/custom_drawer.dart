import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/common/app_colors.dart';


class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: Colors.white,
         
      child: Column(
        children: [
          Container(
            color: AppColors.maincolor,
            height: 140.h,
             width: 320.w,
            child:Center(
              child: Text("News App!",
              style: Theme.of(context).textTheme.titleLarge),),
          ),
          ListTile(
          leading: Icon(Icons.list),
          title:   Text("Categories",
          style:Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.black),) ,),
           ListTile(
          leading: Icon(Icons.settings),
          title:   Text("Settings",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.black),) ,),
        ],
      ),
    );
  }
}