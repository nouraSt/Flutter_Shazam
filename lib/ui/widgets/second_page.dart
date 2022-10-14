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
     final children2 = [
     
    ];
    return  SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
            children: <Widget>[
            
              Container(
                
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                    const SizedBox(height: 10,),
                    TextWidget(text: 'A gagner cette semaine',textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w100, color:Color.fromARGB(255, 92, 91, 91)), ),
                    TextWidget(text: '500€ en chèques cadeaux',textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Color.fromARGB(255, 112, 111, 111)), ),
                    const SizedBox(height: 13,),
                    TextWidget(text: 'des bons cadeau ou de réduction dans votre centre paris italie 2',textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Color.fromARGB(255, 112, 111, 111)), ),
                    SizedBox(height: 10),  
                    
                   
                     Column(children: [
                        Row(children: [
                            GreenButton(Icon(CupertinoIcons.photo_camera),'Photo'),
                            GreenButton(Icon(CupertinoIcons.upload_circle),'importer'),
                          ],
                        ),
                        Expanded(
                          child: SizedBox(
                              child: Container(color: Colors.pink,
                              alignment: Alignment.center,),
                            ),
                        ),
                        
                          
                       
                    
                      ],),
                    
                   
                    
                   
    
    
                  ],
                ),
                
    
              ),
            
          ],
        ),
    );
  }
}