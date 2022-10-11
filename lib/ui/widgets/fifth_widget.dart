
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class FifthWidget extends StatelessWidget {
   FifthWidget(this.roundedRectangleBorder,{super.key});
 RoundedRectangleBorder roundedRectangleBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width/2-20,
        height: MediaQuery.of(context).size.height*0.17,
         
        child: Card(
          shape: roundedRectangleBorder,
          elevation: 0,
         color: Color.fromARGB(255, 247, 244, 88),
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
                    children:  [
                    Center(child: Text('Carte\n cadeau',style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w600) )),
                    
                  ],),
               ),
             ),
      
                ],
             
          )),
      );
  }
}