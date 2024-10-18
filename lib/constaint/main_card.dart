import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hala/constaint/custom_text_button.dart';
import 'package:hala/constaint/parts.dart';
import 'package:hala/sitic/custom_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainCard extends StatefulWidget {
    MainCard({super.key});

  @override
  State<MainCard> createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
  PageController _pageController=PageController();
  int _currentPage=0;
  late Timer _timer;
  @override
  void initState(){
    super.initState();
  _timer=Timer.periodic(Duration(milliseconds: 2000), (Timer timer){
   if(_currentPage<4){ _currentPage++;}
   else{_currentPage=0;}
   _pageController.animateToPage(_currentPage, duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  });

  }

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Container(
        height: 140.h,
        decoration: BoxDecoration(
          color: CustomColor.GreenColor.withOpacity(0.8),
          borderRadius: BorderRadius.circular(15)
        ),

        child: Row(
          children: [
          Expanded(
            child: PageView(controller: _pageController,
                children:[

                  Image.asset("assets/Group_bottles.png"),
                  Image.asset("assets/Group_bottles.png"),
                  Image.asset("assets/Group_bottles.png"),
                  Image.asset("assets/Group_bottles.png"),
                  Image.asset("assets/Group_bottles.png"),

                ]),
          ),
            Column(
              children: [
                Text("قنينة السوائل من هلا ",style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 19,color: CustomColor.secodryWhiteColor),),
                Spacer(),
                Container(
                width: 140.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:  CustomColor.secodryWhiteColor,
                ),
                child: CustomTextButton(txt: "أطلبها الان", OnPressed: (){},  )),
                Padding(
                    padding: const EdgeInsets.only(top: 10.0,bottom: 10),
                    child: SmoothPageIndicator(
                      effect: WormEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                        spacing: 12,
                        dotColor: CustomColor.secodryWhiteColor.withOpacity(0.5),
                        activeDotColor: CustomColor.PrimryWhiteColor
                      ),
                      controller: _pageController,
                      count: 5,),
                  ),



              ],
            )
        ],),
      ),
    );
  }

  @override
  void dispose(){

    _pageController.dispose();
    super.dispose();
  }
}
