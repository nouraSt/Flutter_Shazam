
import 'package:first_project/ui/widgets/floating_button.dart';

import 'package:first_project/ui/widgets/my_appBar.widget.dart';
import 'package:first_project/ui/widgets/mynavigation_bar.widget.dart';
import 'package:first_project/ui/widgets/second_page.dart';

import 'package:flutter/material.dart';
import '../widgets/card_widget.dart';
import '../widgets/first_screen.dart';

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
      body: SecondPage(),
      //FirstScreen(roundedRectangleBorder: roundedRectangleBorder),
      floatingActionButton: FloatingButton() ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const MyNavigationBar(),
    );
  }
}

