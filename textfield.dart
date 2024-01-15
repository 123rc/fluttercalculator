import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({
    super.key, required this.controller,
  });
final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 50.0),
      child: TextField(
        controller:controller ,
        decoration: const InputDecoration(
            border:InputBorder.none,
            fillColor: AppColors.primaryColor,
            filled: true),
        style: const TextStyle(fontSize: 50),
        readOnly: true,
        autofocus: true,
        showCursor: true,
      ),
    );
  }
}
