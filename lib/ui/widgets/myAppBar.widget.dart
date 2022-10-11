import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Center(
        child: Image.asset(
          'assets/images/logo1.png',
          width: 150,
          fit: BoxFit.fitWidth,
        ),
      ),
      actions: <Widget>[
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            margin: const EdgeInsets.all(10.0),
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 248, 247, 247),

              borderRadius: BorderRadius.circular(10),
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                const BoxShadow(
                  color: Color.fromARGB(255, 124, 123, 123),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: const SizedBox(
              
              child: Center(
                child: Icon(
                  CupertinoIcons.bell,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
          ),
        )
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
