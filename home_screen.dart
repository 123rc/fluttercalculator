import 'package:calculator/constants/colors.dart';
import 'package:calculator/provider/cal_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../buttons/button.dart';
import '../widget/cal_button.dart';
import '../widget/textfield.dart';
import 'data.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    final padding = const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0);
    return Consumer<CalculatorProvider>(
      builder: (context,provider,_) {
        return Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('Calculator')),
            backgroundColor: Colors.lightBlueAccent,
          ),
          body: Column(
            children: [
              CustomTextField(controller:provider.compController,),
              const Spacer(),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.6,
                width: double.infinity,
                padding: padding,
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child:  Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(4, (index) => buttonList[index]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(4, (index) => buttonList[index+4]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(4, (index) => buttonList[index+8]),
                    ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(3, (index) => buttonList[index+12]),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(3, (index) => buttonList[index+15]),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20,
                      ),
                      const calculate()
                    ],
                  ),


                  ],
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}



