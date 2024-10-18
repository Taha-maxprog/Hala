import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hala/constaint/drop_down_button.dart';
import 'package:hala/pages/login.dart';

import '../constaint/custom_green_button.dart';
import '../constaint/custom_text_button.dart';
import '../constaint/custom_text_field.dart';
import '../constaint/divider.dart';
import '../constaint/sign_with.dart';
import '../sitic/custom_color.dart';
import '../sitic/goverment_list.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.PrimryWhiteColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset("assets/green_logo.png")),
            Center(
              child: GestureDetector(onTap: (){}, child: Text("حساب جديد ",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: CustomColor.GreenColor),)),
            ),

            CustomTextField(txt: 'الاسم الاول  ',),
            SizedBox(height: 15.h,),
            CustomTextField(txt: 'الاسم الثاني  ',),
            SizedBox(height: 15.h,),
            CustomTextField(txt: 'رقم الهاتف  ',),
            SizedBox(height: 15.h,),
            CustomTextField(txt: 'كلمة المرور ',),
            SizedBox(height: 15.h,),
            CustomTextField(txt: 'إعادة كلمة المرور ',),
            SizedBox(height: 15.h,),

            Row(
              children: [
                Flexible(flex:6,child: dropDownButton(data: cities, txt1: 'الـمـديـنـة',)),

                 SizedBox(width: 23.w,),
                Flexible(flex:3,child: dropDownButton(data: government, txt1: 'المحافظة',)),
              ],
            ),

            CustomGreenButton(txt: "إنشاء حساب ", OnPressed: () {Get.to(Login());  },),






          ],
        ),
      ),
    );
  }
}
