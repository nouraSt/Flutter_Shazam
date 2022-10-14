import 'package:first_project/ui/widgets/second_card.dart';
import 'package:first_project/ui/widgets/text_widget.dart';
import 'package:first_project/ui/widgets/third_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'card_widget.dart';
import 'fifth_widget.dart';
import 'forth_card.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({
    Key? key,
    required this.roundedRectangleBorder,
  }) : super(key: key);

  final RoundedRectangleBorder roundedRectangleBorder;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
        SingleChildScrollView(
          child: Container(
            
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                const SizedBox(height: 10,),
                TextWidget(text: 'Scannez votre premier ticket et gangner..',textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w100, color:Color.fromARGB(255, 92, 91, 91)), ),
                TextWidget(text: 'Paris italie 2',textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Color.fromARGB(255, 112, 111, 111)), ),
                const SizedBox(height: 13,),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    TextWidget(text: 'PChanger de centre commercial',textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w200, color: Colors.grey), ),
                    SizedBox(width: 10,),
                    Icon(Icons.arrow_forward)
                  ],
                  )
                  ,
                ),
                SizedBox(height: 10,),
                Column(children: [
                  cardWidget(roundedRectangleBorder: roundedRectangleBorder, cwidth: MediaQuery.of(context).size.width, cheight: MediaQuery.of(context).size.height*0.17, ctext1: 'gangnez', ctext2: '500'),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: 
                    // ignore: prefer_const_literals_to_create_immutables
                    [
                          SecondCard(roundedRectangleBorder),
                          ThirdCard(roundedRectangleBorder),
                          
                    ],),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: 
                  // ignore: prefer_const_literals_to_create_immutables
                  [
                         ForthCard(roundedRectangleBorder),
                         FifthWidget(roundedRectangleBorder)
                        
                  ],)

                 

                ],),
                TextWidget(text: 'Vos chances de gagner cette semaine', textStyle:const TextStyle( fontSize: 20, fontWeight: FontWeight.w300, color: Color.fromARGB(255, 112, 111, 111)))
                
               


              ],
            ),
            

          ),
        ),
      ],
    );
  }
}
