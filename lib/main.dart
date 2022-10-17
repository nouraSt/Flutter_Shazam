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
        "/ajouter-ticket": ((context) => const SecondPage())
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      initialRoute: "/",
    );
  }
}
