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
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      initialRoute: "/",
    );
  }
}
