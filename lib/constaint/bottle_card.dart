import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../sitic/custom_color.dart';

class BottleCard extends StatefulWidget {
    BottleCard({super.key, required this.img});
final String img ;


  @override
  State<BottleCard> createState() => _BottleCardState();
}

class _BottleCardState extends State<BottleCard> {
  bool isFavorite=true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            width: 110.w,
            height: 120.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: CustomColor.CardColor
            ),
            child: Image.asset(widget.img ,scale: 1.3,),

          ),

        ),
        Positioned(
            top: 12,
            right: 12,
            child:  Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: (){
                   setState(() {
                     isFavorite=!isFavorite;
                   });
                },
                child: Icon(size: 16,
                    isFavorite?  Icons.favorite:Icons.favorite_border,

                  color: isFavorite ?Colors.red:Colors.black,
                ),
              ),
            )
        )
      ],
    );

  }
}
