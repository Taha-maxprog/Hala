import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hala/sitic/custom_color.dart';

class SignWith extends StatelessWidget {
  const SignWith({super.key, required this.Icn, required this.clr, required this.txt});
  final IconData Icn;
  final Color clr;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.w,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(left: 10,right: 10,top: 7,bottom: 7),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: CustomColor.secodryWhiteColor,),

      child: Row(children: [

       FaIcon(Icn,color: clr,),
        SizedBox(width: 50.w,),
        Text(txt,style: TextStyle(fontSize: 17,fontWeight: FontWeight.normal),),


      ],),),
    );
  }
}
