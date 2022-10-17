import 'package:first_project/main.dart';
import 'package:first_project/ui/widgets/my_appBar.widget.dart';
import 'package:first_project/ui/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ThirdWidget extends StatefulWidget {
  const ThirdWidget({super.key});

  @override
  State<ThirdWidget> createState() => _ThirdWidgetState();
}

class _ThirdWidgetState extends State<ThirdWidget> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
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
                  child: Image.asset('assets/images/group1.png'))),
              const SizedBox(height: 20,),
             
                 Padding( padding: EdgeInsets.only(top: 150),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    
                     TextWidget(text: 'Votre ticket a été ajouté:', textStyle: const TextStyle(color:Color.fromRGBO(248, 195, 183, 1 ),
                    fontWeight: FontWeight.w100, fontSize: 19)),
                    TextWidget(text: 'Magazin McDonalds', textStyle: const TextStyle(color: Color.fromARGB(255, 255, 102, 148), 
                    fontWeight: FontWeight.w200, fontSize: 27)),
                    const SizedBox(height: 50,),
                    TextWidget(text: 'Ce ticket vous offre 1 chance', textStyle: const TextStyle(color: Color.fromARGB(255, 245, 244, 244), 
                    fontWeight: FontWeight.w200, fontSize: 16)),
                
                    TextWidget(text: ' de gagner cette semaine!' ,textStyle: const TextStyle(color: Color.fromARGB(255, 245, 244, 244), 
                    fontWeight: FontWeight.w300, fontSize: 16)),

                    const SizedBox(height: 50,),
                    ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 241, 84, 11),shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)
                    )
                          ), child:const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('Suite',style:TextStyle(fontSize: 15),)),)
                             
                               ],),
                 ),
              
              
        
              ]
          ),
        )
        
    );
  }
}