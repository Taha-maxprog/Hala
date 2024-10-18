import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hala/pages/sign_in.dart';

import '../sitic/custom_color.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.txt, required this.OnPressed,  });
  final String txt ;

    final VoidCallback OnPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(

        onPressed: OnPressed,

        child: Text(txt,
          style: TextStyle(color:  CustomColor.GreenColor,fontWeight: FontWeight.bold),));
  }
}
