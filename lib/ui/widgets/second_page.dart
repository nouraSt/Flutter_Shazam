import 'package:first_project/ui/widgets/green_widget.dart';
import 'package:first_project/ui/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
     
    return  Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        const SizedBox(
          height: 10,
        ),
      
       
        TextWidget(text: 'A gagner cette semaine',textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w100, color:Color.fromARGB(255, 92, 91, 91)), ),
        SizedBox(height: 5,),
        TextWidget(text: '500€ en chèques cadeaux',textStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Color.fromARGB(255, 7, 7, 7)), ),
        SizedBox(height: 5,),
        TextWidget(text: 'des bons cadeau ou de réduction\n dans votre centre paris italie 2',textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 12, 12, 12)), ),
        SizedBox(height: 10),
    
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GreenButton(Icon(CupertinoIcons.photo_camera),'Photo'),
                  GreenButton(Icon(CupertinoIcons.square_arrow_up),'importer'),
                ],
              ),
              Expanded(
                child: SizedBox(
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width-40,
                    color: Color.fromARGB(255, 255, 140, 174),
                  ),
                ),
              ),
             
            ],
          ),
        )
      ],
    );
    }
}