import 'package:first_project/ui/Constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecondCard extends StatelessWidget {
   SecondCard(
    this.roundedRectangleBorder,{super.key});

  RoundedRectangleBorder roundedRectangleBorder;

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: MediaQuery.of(context).size.width/2-20,
        height: MediaQuery.of(context).size.height*0.17,
         
        child: Card(
          shape: roundedRectangleBorder,
          elevation: 0,
         color: Color.fromARGB(255, 202, 171, 241),
          child: Stack(
            children: [ 
       
                Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset('assets/images/rec.png',
                  fit:BoxFit.fill
                 ),
                ),
               
             Center(
               child: Expanded(
                 child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                    Center(child: Text('1 menu\n offert',style:  gras )),
                  
                  ],),
               ),
             ),
      
                ],
             
          )),
      );
  }
}