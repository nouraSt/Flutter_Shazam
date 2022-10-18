import 'package:flutter/material.dart';


// ignore: must_be_immutable
class TextFieldd extends StatelessWidget {
    TextFieldd( this.txt, {super.key});
  
  String txt;
  

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.all(10),
      child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        hintText: txt,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        labelText: 'Full Name',
                      ),),
    );
  }
}