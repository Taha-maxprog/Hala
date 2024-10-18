import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hala/sitic/custom_color.dart';

class dropDownButton extends StatefulWidget {
  const dropDownButton({super.key, required this.data, required this.txt1, });
  final List<String> data;
    final String txt1;

  @override
  State<dropDownButton> createState() => _dropDownButtonState();
}

class _dropDownButtonState extends State<dropDownButton> {
  String? ListData;



  @override
  Widget build(BuildContext context) {

    return  Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 10,right: 20),
        decoration: BoxDecoration(
          color: CustomColor.secodryWhiteColor,
          borderRadius: BorderRadius.circular(15),

        ),
      child: Directionality(

        textDirection: TextDirection.rtl,
        child: DropdownButton<String> (
            style: TextStyle(color: CustomColor.txtColor),
          hint:  Text(widget.txt1,style: TextStyle(color: CustomColor.txtColor),),
          underline: SizedBox(),
          isExpanded: true,
          icon: Icon(Icons.arrow_drop_down,color: CustomColor.GreenColor,size: 33,),
          onChanged: (String? newValue) {
        setState((){
          ListData=newValue;
        });
          },
          items: widget.data.map((String value){
        return DropdownMenuItem<String>(value:value,
            child:Text(value) );
          }).toList(),
          value: ListData,
        ),
      ),
      ),
    );
  }
}
