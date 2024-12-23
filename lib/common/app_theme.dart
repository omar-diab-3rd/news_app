import 'package:flutter/material.dart';
import 'package:news/common/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 

class AppTheme {
  static ThemeData theme = ThemeData(colorScheme:ColorScheme.fromSeed(seedColor: AppColors.maincolor),
  scaffoldBackgroundColor: Colors.white,
  textTheme:const TextTheme(
    titleLarge: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 24,
      color: Colors.white),
      headlineSmall: TextStyle(
        fontSize: 22.50,
        fontWeight: FontWeight.w700,

      )
      
      ),
  
  appBarTheme:AppBarTheme(color: AppColors.maincolor ,
  centerTitle: true,
  titleTextStyle: TextStyle(
    color: Colors.white,
    fontSize: 22.sp,
  ),
  
  iconTheme:const IconThemeData(color: Colors.white),
  shape:const RoundedRectangleBorder(
    borderRadius: BorderRadiusDirectional.vertical(bottom: Radius.circular(50))
    )
    )
     );
}