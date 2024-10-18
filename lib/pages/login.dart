import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hala/constaint/nav_bar.dart';
import 'package:hala/pages/forget_bassword.dart';
import 'package:hala/pages/home_page.dart';
import 'package:hala/pages/sign_in.dart';
import 'package:hala/sitic/custom_color.dart';
import 'package:hala/constaint/custom_green_button.dart';
import 'package:hala/constaint/custom_text_button.dart';
import 'package:hala/constaint/custom_text_field.dart';
import 'package:hala/constaint/sign_with.dart';

import '../constaint/divider.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
              child: GestureDetector(onTap: (){}, child: Text("سجل الدخول الى حسابك ",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22, ),)),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [CustomTextButton(txt: 'إنشاء حساب', OnPressed:() {  Get.to(SignIn());},  ),
                       Text("ليس لديك حساب ؟  ")],),
            CustomTextField(txt: 'رقم الهاتف ',),
            SizedBox(height: 25.h,),
            CustomTextField(txt: 'كلمة المرور ',),
            CustomTextButton(txt: "هل نسيت كلمة السر ؟  ", OnPressed: () {  Get.to(ForgetBassword());}, ),
            CustomGreenButton(txt: "تسجيل الدخول ", OnPressed: () { Get.to(NavBar()); },),

            CDivider(),
            SizedBox(height: 25.h,),
            SignWith(Icn: FontAwesomeIcons.facebookF, clr: Colors.blue, txt: "sign with facebook",),
            SignWith(Icn: FontAwesomeIcons.google, clr: Colors.red, txt: 'sign with google',),
            Spacer(),
            Center(child: Text("أستخدم القناني القابلة لإعادة الاستخدام يمكن أن\n  يكون إسهاماً صغيراً منا في الحفاظ على البيئة  \nوتحسين جودة حياتنا وصحتنا العامة",
              style: TextStyle(color: CustomColor.GreenColor),textAlign: TextAlign.center)),





          ],
        ),
      ),
    );
  }
}
