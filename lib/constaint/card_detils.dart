import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hala/sitic/custom_color.dart';

import 'bottle_card.dart';

class CardDetils extends StatelessWidget {
  const CardDetils({super.key,  required this.clr, required this.img, required this.txt, required this.title});
  final Color clr;
  final String img ;
  final String txt ;
  final String title ;


  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        BottleCard(img: img,),
         Row(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Icon(Icons.star,size: 12,color: Colors.amber,),
           Text("4.9",style: TextStyle(fontSize: 7),),

           Column(children: [
             Row(
               children: [  Text(txt,style: TextStyle( color:  clr,fontSize: 7 ),),
                 Text(title,style: TextStyle( fontSize:7 ),)

               ],
             ),

             Text("السعر : 32,000 د.ع" ,style: TextStyle( fontSize:12 ,))
           ],),
         ],
       )

      ],
    );
  }
}
