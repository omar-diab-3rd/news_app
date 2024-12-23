import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/common/app_theme.dart';
import 'package:news/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
   Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(418 , 870),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          theme: AppTheme.theme ,
          home: child,
        );
      },
      child:const SafeArea(child:Splash()),
    );
  }
}

 