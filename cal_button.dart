import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../constants/colors.dart';
import '../provider/cal_provider.dart';

class calculate extends StatelessWidget {
  const calculate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>
        Provider.of<CalculatorProvider>(context,listen: false).setVal("=")

      ,
      child: Container(
        height:160,
        width:70,
        decoration:BoxDecoration(
          color: AppColors.secondary2Color,
          borderRadius: BorderRadius.circular(40),),
        child:Center(child: Text('=',style: TextStyle(color: AppColors.secondary3Color,fontSize: 25,fontWeight:FontWeight.w700 ),)),
      
      
      ),
    );
  }
}