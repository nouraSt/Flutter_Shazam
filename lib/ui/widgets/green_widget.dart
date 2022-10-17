import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:io';




// ignore: must_be_immutable
class GreenButton extends StatelessWidget {
   
  GreenButton( this.icon,
  this.text,
  
  {super.key});
  Icon icon= Icon(CupertinoIcons.photo_camera, color: Colors.white,);
  String text ='';
  
  @override
  Widget build(BuildContext context) {
    
    return Container(
      //height: MediaQuery.of(context).size.height*0.1,
      height:60,
      width: MediaQuery.of(context).size.width/2-20,
      decoration: const BoxDecoration(
         color:Color.fromARGB(255, 9, 49, 10),
         borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
         topRight: Radius.circular(20),
         )  
       ),
       child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
             
             Container(
              height: 30,
              width: 30,
              
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
              alignment: Alignment.center,
              child:
              GestureDetector(child: icon,
              onTap: (){
                  
              },
              )),
             SizedBox(width: 10,),
             Text(text,style: TextStyle(color: Colors.white, ),)
       ],),
       
    );
  }
}