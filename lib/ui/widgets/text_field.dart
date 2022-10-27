import 'package:flutter/material.dart';


// ignore: must_be_immutable
class TextFieldd extends StatelessWidget {
    TextFieldd( this.labeel, this.txt, {super.key});
  
  String  txt='';
  String labeel ='';
  

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        
                      decoration: InputDecoration(
                        
                        filled: true,
                        hintText: txt,
                        fillColor: Colors.white,
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                          width: 0, 
                          style: BorderStyle.none,
                      ),
        ),
                        labelText: labeel,
                      ),),
    );
  }
}