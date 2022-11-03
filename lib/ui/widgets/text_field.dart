import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


// ignore: must_be_immutable
class TextFieldd extends StatefulWidget {
    TextFieldd( this.labeel, this.txt,this.validator,this.inputtedValue, {super.key, });
  
  String  txt='';
  String labeel ='';
  final String? Function(String?)? validator;
  String? inputtedValue;

  @override
  State<TextFieldd> createState() => _TextFielddState();
}

class _TextFielddState extends State<TextFieldd> {
 

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        
        validator: widget.validator,
        onChanged: (value){
          setState(() => widget.inputtedValue = value);
        },
                      decoration: InputDecoration(
                        
                        filled: true,
                        hintText: widget.txt,
                        fillColor: Colors.white,
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                          width: 0, 
                          style: BorderStyle.none,
                      ),
        ),
        
                        labelText: widget.labeel,
                      ),),
    );
  }
}