import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hala/pages/home_page.dart';
import 'package:hala/pages/login.dart';
import 'package:hala/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   ScreenUtilInit(
      designSize: Size(411,843),
      minTextAdapt: true,
      builder: (context,child){
        return    GetMaterialApp(

          home:  SplashScreen() ,// Login(),
        );
      },
    );
  }
}


