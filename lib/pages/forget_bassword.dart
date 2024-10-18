import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hala/constaint/custom_green_button.dart';
import 'package:hala/constaint/custom_text_field.dart';
import 'package:hala/pages/login.dart';
import 'package:hala/sitic/custom_color.dart';

class ForgetBassword extends StatelessWidget {
  const ForgetBassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:    CustomColor.PrimryWhiteColor, ),
       body:Container(
         color: CustomColor.PrimryWhiteColor,
         child: Padding(
           padding: EdgeInsets.all(18),
           child:  Column(

             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.start,
             textDirection: TextDirection.rtl,

             children: [
               Image.asset("assets/bassword_page.png"),
               Text("هل نسيت كلمة المرور ؟",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
               Text("يرجى إعادة ضبط كلمة المرور بأستخدام رقم الهاتف",style: TextStyle(color: CustomColor.txtColor,fontSize: 16),),
               SizedBox(height: 50.h,),
               CustomTextField(txt: "رقم الهاتف "),
               SizedBox(height: 25.h,),
               CustomGreenButton(txt: "إعادة كلمة المرور", OnPressed: (){Get.to(Login());})
             ],
           ),
         ),
       ) ,);
  }
}
