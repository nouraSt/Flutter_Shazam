import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        border: Border.all(color:Colors.white, width:5, style: BorderStyle.solid,
        )
      ),
      child: FloatingActionButton( 
            backgroundColor: Colors.red,
            shape: RoundedRectangleBorder(borderRadius:
            BorderRadius.all(Radius.circular(15.0) ,)),
            //Floating action button on Scaffold
               onPressed: (){
              //code to execute on button press
               },
               child: Icon(Icons.add), //icon inside button
           ),
    );
  }
}