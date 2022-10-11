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
          right: 20,
          child: Container(
            height: 22,
            width: 22,
            color: Colors.white10,
            alignment: Alignment.center,
            
            // decoration: BoxDecoration(
            //   color: const Color.fromARGB(255, 248, 247, 247),

            //   borderRadius: BorderRadius.circular(10),
            //   // ignore: prefer_const_literals_to_create_immutables
             
            // ),
            child: const SizedBox(
              
              child: Icon(
                  CupertinoIcons.bell,
                  color: Colors.black,                
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
