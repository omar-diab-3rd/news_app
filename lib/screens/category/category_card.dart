import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/screens/category/category_model.dart';


class CategoryCard extends StatelessWidget {
   CategoryCard({
    super.key ,
    required this.categoryModel,
    required this.index,
});
   CategoryModel categoryModel;
   int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 148,
        height: 171,
        
        decoration: BoxDecoration(
          color:  categoryModel.colorr,
          borderRadius: BorderRadius.only(
          topRight:const Radius.circular(35),
          topLeft :const Radius.circular(35),
          bottomLeft:  index.isEven ? const Radius.circular(35) :Radius.circular(0) ,
          bottomRight:  index.isOdd ? const Radius.circular(35) :Radius.circular(0)  )
      
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset( categoryModel.imagePath , height: 120.h,fit: BoxFit.cover,  ) ,
              Text(categoryModel.title , style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 22),),
            ],
          ),
        ),
      ),
    ) ;
  }
}