import 'package:first_project/ui/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/my_appBar.widget.dart';
import '../widgets/text_widget.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: const MyAppBar(),
        body:Padding(
          padding: EdgeInsets.only(top:20),
          child: Stack(
            children:  [Container(
              decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(20),
              topRight: Radius.circular(20)),
              color: Color.fromRGBO(74, 105, 105, 1),),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              
              ),
              Positioned(
                top: 0,
                left:40 ,
                child: Container(height: 150,
                  child: Image.asset('assets/images/group2.png'))),
              const SizedBox(height: 20,),
             
                 Padding( padding: EdgeInsets.only(top: 150),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    
                    
                    TextWidget(text: 'Text non valide', textStyle: pinkgras),
                    const SizedBox(height: 50,),
                    TextWidget(text: 'Tentez à nouveau votre', textStyle: petitBlanc,),
                    TextWidget(text: 'chance en scannant un ticket' ,textStyle: petitBlanc),
                    TextWidget(text: 'provenant de nos magasins' ,textStyle: petitBlanc),
                    TextWidget(text: 'participant à QUARTO' ,textStyle: petitBlanc),

                    const SizedBox(height: 50,),
                    ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 241, 84, 11),shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)
                    )
                          ), child:const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('Liste de magasins participants',style:TextStyle(fontSize: 15),)),)
                             
                               ],),
                 ),
              
              
        
              ]
          ),
        )
        
    );
  }
}
  
