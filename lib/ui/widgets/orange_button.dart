import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OrangeButton extends StatelessWidget {
  OrangeButton(this.txt, {super.key});
  String txt='';
   

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){},
    style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 241, 84, 11),shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)
                    )
                          ), child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(txt,style:TextStyle(fontSize: 15),)),);
  }
}