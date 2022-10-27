
import 'package:first_project/ui/widgets/floating_button.dart';

import 'package:first_project/ui/widgets/my_appBar.widget.dart';
import 'package:first_project/ui/widgets/my_navigation_bar.widget.dart';
import 'package:first_project/ui/pages/second_page.dart';

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

 
    return Scaffold(
      appBar: const MyAppBar(),
      body:  SingleChildScrollView(child: FirstScreen(roundedRectangleBorder: roundedRectangleBorder)),
      floatingActionButton: FloatingButton() ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const MyNavigationBar(),
    );
  }
}

