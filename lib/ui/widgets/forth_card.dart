import 'package:first_project/ui/Constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ForthCard extends StatelessWidget {
   ForthCard(
    this.roundedRectangleBorder,
    {super.key});

  RoundedRectangleBorder roundedRectangleBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width/2-20,
        height: MediaQuery.of(context).size.height*0.17,
         
        child: Card(
          shape: roundedRectangleBorder,
          elevation: 0,
         color: Color.fromARGB(255, 163, 250, 174),
          child: Stack(
            children: [ 
       
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset('assets/images/rec3.png',
                  fit:BoxFit.fill
                 ),
                ),
               
             Center(
               child: Expanded(
                 child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children:  [
                    Center(child: Text('1 mug\n offert',style: gras )),
                    
                  ],),
               ),
             ),
      
                ],
             
          )),
      );
  }
}