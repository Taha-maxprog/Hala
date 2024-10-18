import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hala/sitic/custom_color.dart';

class CDivider extends StatelessWidget {
  const CDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       Expanded(child:   Divider(thickness: 1,color:  CustomColor.txtColor,endIndent: 10,indent: 10,),),
        Text("أو من خلال",style: TextStyle(color:  CustomColor.txtColor),),
        Expanded(child:   Divider(thickness: 1,color: CustomColor.txtColor,indent: 10,endIndent: 10,),),
       ],
    );
  }
}
