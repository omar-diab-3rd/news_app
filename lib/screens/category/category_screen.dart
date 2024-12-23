import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/common/app_images.dart';
import 'package:news/common/widgets/custom_drawer.dart';
import 'package:news/screens/category/category_card.dart';
import 'package:news/screens/category/category_model.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryModel>category=[
    CategoryModel(
      imagePath:AppImages.sport ,
      colorr: const  Color(0xffC91C22),
      title: "Sport"),

      CategoryModel(
      imagePath:AppImages.politics ,
      colorr: const  Color(0xff003E90),
      title: "Politics"),

      CategoryModel(
      imagePath:AppImages.health,
      colorr: const Color(0xffED1E79),
      title: "Health"),

      CategoryModel(
      imagePath:AppImages.business,
      colorr: const Color(0xffCF7E48),
      title: "Business"),

      CategoryModel(
      imagePath:AppImages.environment,
      colorr: const Color(0xff4882CF),
      title: "Enivironment"),

      CategoryModel(
      imagePath:AppImages.science,
      colorr: const Color(0xffF2D352),
      title: "Science"),
    ];
   
    return Scaffold(
      drawer:const CustomDrawer(),
      appBar: AppBar(
        title:const Text("News App"),
      ),

    body: Container(
      height:double.infinity,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 35.h , horizontal: 35.w),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AppImages.bgSplash) ,fit:BoxFit.cover )
      ),
      
       child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(" pick your category \n of insert " , style: Theme.of(context).textTheme.headlineSmall,),

           Expanded(child: Padding(
             padding:  EdgeInsets.symmetric(vertical: 30.h , horizontal: 20.h),
             child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 171.h,
                crossAxisCount:  2,
                crossAxisSpacing: 24.w,
                mainAxisSpacing: 20.h),
                 itemBuilder:  (context , index) =>  CategoryCard(categoryModel: category[index], index: index),
                 itemCount: 6,),
           )
           )

        ],
       ),
    ),
    );
  }
}