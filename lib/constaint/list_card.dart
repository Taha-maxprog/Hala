import 'package:flutter/cupertino.dart';

import '../sitic/custom_color.dart';
import 'card_detils.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key, required this.img, required this.txt, required this.clr, required this.title});
  final List img;
  final List txt ;
 final List clr ;
 final String title;

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        CardDetils(clr:clr[0], img: img[0], txt: txt[0], title: title,),
        CardDetils(clr: clr[1],      img: img[1], txt: txt[1], title: title,),
        CardDetils(clr: clr[2],    img: img[2], txt: txt[2], title: title,),


      ],
    );
  }
}
