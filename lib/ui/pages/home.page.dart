import 'package:first_project/ui/widgets/fifth_widget.dart';
import 'package:first_project/ui/widgets/floating_button.dart';
import 'package:first_project/ui/widgets/forth_card.dart';
import 'package:first_project/ui/widgets/myAppBar.widget.dart';
import 'package:first_project/ui/widgets/myNavigationBar.widget.dart';
import 'package:first_project/ui/widgets/second_card.dart';
import 'package:first_project/ui/widgets/text_widget.dart';
import 'package:first_project/ui/widgets/third_card.dart';
import 'package:flutter/material.dart';
import '../widgets/card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const IconData notifications =
      IconData(0xe44f, fontFamily: 'MaterialIcons');

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData;
    mediaQueryData = MediaQuery.of(context);
    double screenWidth = mediaQueryData.size.width;

    const roundedRectangleBorder = RoundedRectangleBorder(
      side: BorderSide(
        color: Colors.purple,
      ),
      borderRadius: BorderRadius.all(Radius.circular(12)),
    );

    final children2 = [
      cardWidget(
          roundedRectangleBorder: roundedRectangleBorder,
          cwidth: screenWidth,
          cheight: 100,
          ctext1: 'hello',
          ctext2: 'world'),
      Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            cardWidget(
                roundedRectangleBorder: roundedRectangleBorder,
                cwidth: screenWidth / 2,
                cheight: 100,
                ctext1: 'hello',
                ctext2: 'world'),
            cardWidget(
                roundedRectangleBorder: roundedRectangleBorder,
                cwidth: screenWidth / 2,
                cheight: 100,
                ctext1: 'hello',
                ctext2: 'world')
          ],
        ),
      ),
      Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            cardWidget(
              roundedRectangleBorder: roundedRectangleBorder,
              cheight: 100,
              cwidth: screenWidth / 2,
              ctext1: '1 mug ',
              ctext2: 'offert',
            ),
            cardWidget(
              roundedRectangleBorder: roundedRectangleBorder,
              cheight: 100,
              cwidth: screenWidth / 2,
              ctext1: 'carte',
              ctext2: 'cadeau',
            ),
          ],
        ),
      ),
      const Center(
        child: Text(
          'vos chances de gagner cette semaine',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    ];
    return Scaffold(
      appBar: const MyAppBar(),
      body: Column(
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
                      const SizedBox(width: 10,),
                      const Icon(Icons.arrow_forward)
                    ],
                    )
                    ,
                  ),
                  const SizedBox(height: 10,),
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
      ),
      floatingActionButton:const FloatingButton() ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const MyNavigationBar(),
    );
  }
}
