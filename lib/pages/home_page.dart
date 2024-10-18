import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hala/constaint/card_detils.dart';
import 'package:hala/constaint/main_card.dart';
import 'package:hala/sitic/custom_color.dart';
import 'package:hala/sitic/list_data.dart';

import '../constaint/bottle_card.dart';
import '../constaint/card_part.dart';
import '../constaint/list_card.dart';
import '../constaint/parts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0.h),

        child: Padding(
          padding: const EdgeInsets.only(right: 23,left: 44 ),
          child: AppBar(
            leading: Image.asset("assets/green_logo.png"),
            actions: [Row(children: [
              const Text(" عيسى",style: TextStyle(fontSize:17,fontWeight: FontWeight.normal,color: CustomColor.txtColor ),),
              const Text(",مرحبا",style: TextStyle(fontSize:17,fontWeight: FontWeight.bold ),),

              SizedBox(width: 12.w,),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
                    color: CustomColor.secodryWhiteColor,border: Border.all(color: CustomColor.GreenColor)),
                child: const Icon(Icons.person,color: CustomColor.GreenColor,))],)],
          ),

        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0,right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,


          children: [
        Row(
          children: [
            const SizedBox(width: 80,),
            Container(
        width: 300.w,
        height: 38.h,

        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: CustomColor.CardColor, ),

         child: const TextField(

           textAlign: TextAlign.right,
            decoration: InputDecoration(
        suffixIcon: Icon(Icons.search_rounded),
        contentPadding: EdgeInsets.only(right: 12,left: 12),
        border: InputBorder.none,
        hintText: "…ابحث عن منتج ",
         ),
         ),),
          ],
        ),
            MainCard(),
            const Parts(txt: " الأقسام",),
            const Row(
              children: [

                CardPart(clr: CustomColor.green,),
                CardPart(clr: CustomColor.tdclr,),
                CardPart(clr: CustomColor.sdclr,),
                CardPart(clr: CustomColor.bluclr,),
                CardPart(clr: CustomColor.green,),
              ],
            ),
            const Parts(txt: "قنينة سوائل هلا",),
            ListCard(img: Bottles, txt: ListBottleTxt, clr: ListBottleclr, title: "-قنينة سوائل هلا  ", ),
            const Parts(txt: "غطاء تبديل قنينة السوائل",),
            ListCard(img: ListCover, txt: ListCoverTxt, clr: ListCoverclr, title: 'غطاء تبديل قنينة السوائل',),
          ],
        ),
      ),
    );
  }
}
