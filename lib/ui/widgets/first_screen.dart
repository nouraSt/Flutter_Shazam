import 'package:first_project/ui/Constants/constants.dart';
import 'package:first_project/ui/widgets/progress_bar.dart';
import 'package:first_project/ui/widgets/second_card.dart';
import 'package:first_project/ui/widgets/text_widget.dart';
import 'package:first_project/ui/widgets/third_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'card_widget.dart';
import 'fifth_widget.dart';
import 'forth_card.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({
    Key? key,
    required this.roundedRectangleBorder,
  }) : super(key: key);

  final RoundedRectangleBorder roundedRectangleBorder;

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
 

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
                TextWidget(text: '100% gagnant',textStyle: gras ),
                const SizedBox(height: 10,),
                Align(
                  alignment: Alignment.center,
                  child: TextWidget(text: 'Scannez votre premier ticket et gangner..',textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w100, color:Color.fromARGB(255, 92, 91, 91)), )),
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
                  cardWidget(roundedRectangleBorder: widget.roundedRectangleBorder, cwidth: MediaQuery.of(context).size.width, cheight: MediaQuery.of(context).size.height*0.17, ctext1: 'gangnez', ctext2: '500€'),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: 
                    // ignore: prefer_const_literals_to_create_immutables
                    [
                          SecondCard(widget.roundedRectangleBorder),
                          ThirdCard(widget.roundedRectangleBorder),
                          
                    ],),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: 
                  // ignore: prefer_const_literals_to_create_immutables
                  [
                         ForthCard(widget.roundedRectangleBorder),
                         FifthWidget(widget.roundedRectangleBorder)
                        
                  ],)

                 

                ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  
                  children:
                 [Container(
                  width: MediaQuery.of(context).size.width/2-20,
                  child: TextWidget(text: 'Vos chances de gagner cette semaine', textStyle:const TextStyle( fontSize: 16, fontWeight: FontWeight.w300, color: Color.fromARGB(255, 112, 111, 111)))),
                  Container(
                     width: 30,
                     height: 30,
                    child: ProgressBar())
                 ])
                
               


              ],
            ),
            

          ),
        ),
      ],
    );
  }
}
