import 'package:first_project/ui/pages/cration_success.dart';
import 'package:first_project/ui/pages/create_account.dart';
import 'package:first_project/ui/pages/forth_page.dart';
import 'package:first_project/ui/pages/second_page.dart';
import 'package:first_project/ui/pages/third_page.dart';
import 'package:flutter/material.dart';
import 'package:first_project/ui/pages/home.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": ((context) => const HomePage()),
        //"/ajouter-ticket": ((context) => const SecondPage()),
        "/ticket-valide:": ((context) => const ThirdWidget()),
        "/ticket-nonvalide":((context) => const ForthPage()),
        "/create-account":((context) => const CreateAccount()),
        "/account-created-success": ((context) => const MyWidget())
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
      ),
      initialRoute: "/",
    );
  }
}
