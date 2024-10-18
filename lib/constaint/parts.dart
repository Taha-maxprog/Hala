import 'package:flutter/cupertino.dart';
import 'package:hala/constaint/custom_text_button.dart';

class Parts extends StatelessWidget {
  const Parts({super.key, required this.txt});
  final String txt ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        CustomTextButton(txt: "المزيد", OnPressed: (){}),
        Text(txt,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
    ],);
  }
}
