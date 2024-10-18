import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hala/sitic/custom_color.dart';
import 'package:hala/sitic/cutom_border_ridios.dart';

class CustomGreenButton extends StatelessWidget {
  const CustomGreenButton({super.key, required this.txt, required this.OnPressed});
  final String txt ;
  final VoidCallback OnPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 411.w,
      margin: EdgeInsets.all(10),
      decoration: CustomBorderRidios.CustomBox(),

        child: TextButton(onPressed: OnPressed,
      child: Text(txt,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 23),),));
  }
}
