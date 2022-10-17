import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FloatingButton extends StatefulWidget {
  
  FloatingButton({super.key});

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
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
               onPressed: () async{
              //code to execute on button press
                  await Navigator.of(context).pushNamed('/ajouter-ticket');
               },
               child: Icon(Icons.add), //icon inside button
           ),
    );
  }
}