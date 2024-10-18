import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../sitic/custom_color.dart';

class CardPart extends StatelessWidget {
  const CardPart({super.key, required this.clr});
  final Color clr ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:22.0),
      child: Container(
        width: 50.w,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: clr
        ),
        child: Image.asset("assets/white_bottle_border.png"),
      ),
    );
  }
}
