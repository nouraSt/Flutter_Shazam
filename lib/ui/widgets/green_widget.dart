

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';






// ignore: must_be_immutable
class GreenButton extends StatelessWidget {
   
  GreenButton( this.icon,
  this.text,
  //this.tap,
  {super.key});
  Icon icon= const Icon(CupertinoIcons.photo_camera, color: Colors.white,);
  String text ='';
  //Future<dynamic> tap;
  
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0),
      child: Container(
          //height: MediaQuery.of(context).size.height*0.1,
          height:60,
          width: MediaQuery.of(context).size.width/2-30,
          padding: EdgeInsets.symmetric(vertical: 0),
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
                  
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                  alignment: Alignment.center,
                  child:icon
                 ),
                 const SizedBox(width: 10,),
                 Text(text.trim(),style: TextStyle(color: Colors.white, ),)
           ],),
           
        ),
    );
     
    
  }
}