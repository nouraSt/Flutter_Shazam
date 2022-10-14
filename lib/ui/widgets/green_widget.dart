import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GreenButton extends StatelessWidget {
  GreenButton( this.icon,
  this.text,
  {super.key});
  Icon icon= Icon(CupertinoIcons.photo_camera);
  String text ='';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.1,
      width: MediaQuery.of(context).size.width/2-20,
      decoration: BoxDecoration(
         color:Color.fromARGB(255, 9, 49, 10),
         borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
         topRight: Radius.circular(10),
         )  
       ),
       child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
             
             icon,
             SizedBox(width: 10,),
             Text(text)
       ],),
       
    );
  }
}