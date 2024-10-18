import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sitic/custom_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.txt});
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10,right: 10),
      decoration:BoxDecoration(borderRadius: BorderRadius.circular(15) ,color: CustomColor.secodryWhiteColor,),
      child: TextField(textAlign: TextAlign.right,
          decoration: InputDecoration( contentPadding: EdgeInsets.all(15),
              border: InputBorder.none,hintText: txt,hintStyle: TextStyle(color: CustomColor.txtColor))),
    );
  }
}
