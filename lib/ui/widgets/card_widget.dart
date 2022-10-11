// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: file_names
// ignore: file_names


import 'package:flutter/material.dart';


// ignore: camel_case_types, must_be_immutable
class cardWidget extends StatelessWidget {
  cardWidget({
    Key? key,
    required this.roundedRectangleBorder,
    required this.cwidth,
    required this.cheight,
    required this.ctext1,
    required this.ctext2
  }) : super(key: key);

   RoundedRectangleBorder roundedRectangleBorder;
   double cwidth=0;
   double cheight=0;
   String ctext1='';
   String ctext2='';
   
  @override
  Widget build(BuildContext context) {
     
    return  Container(
        
        width: cwidth,
        height: cheight,
         
        child: Card(
          elevation: 0,
         shape: roundedRectangleBorder,
         color: Color.fromARGB(255, 247, 168, 168),
          child: Stack(
            children: [ 
       
                Positioned(
                  top: 0,
                  right: 0,
                  child: ClipRRect(
                    child: Image.asset('assets/images/rec.png',
                    fit:BoxFit.fill,
                                   ),
                  ),
                ),
               Positioned(
                  bottom: 0,
                  left: 0,
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
                    Center(child: Text(ctext1,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w100) )),
                    Center(child: Text(ctext2,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w700) ))
                  ],),
               ),
             ),
      
                ],
             
          )),
      );
  }
}
