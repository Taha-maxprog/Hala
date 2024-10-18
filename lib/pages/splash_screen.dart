import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hala/sitic/custom_color.dart';
import "package:get/get.dart";

import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState(){
    super.initState();
    _GoToLoginPage();
  }
  _GoToLoginPage()async{
    await Future.delayed(Duration(milliseconds: 2000),(){});
    Get.to(Login());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.GreenColor,
     body: Container(

       child: Center(child: Image.asset("assets/white_logo.png")),
     ),
    );
  }
}
