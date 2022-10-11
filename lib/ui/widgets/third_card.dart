import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ThirdCard extends StatelessWidget {
  ThirdCard(
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
         color: Color.fromARGB(255, 210, 231, 252),
          child: Stack(
            children: [ 
       
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset('assets/images/rec2.png',
                  fit:BoxFit.fill
                 ),
                ),
               
             Center(
               child: Expanded(
                 child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                    Center(child: Text('-10%',style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w600) )),
                  
                  ],),
               ),
             ),
      
                ],
             
          )),
      );
  }
}