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
        Stack(children: [
          Positioned(
            top:0,
            right: 0,
            left: 0,
            bottom:0,
            child: Center(
              child: Container(
                  height: 30,
                  width: 30,
                  
                 // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
              color: Color.fromARGB(255, 244, 244, 245),
              boxShadow: [
                
                BoxShadow(
                  
                   color: Colors.grey.withOpacity(0.5),
                   spreadRadius: 2,
                   blurRadius: 4,
                   offset: Offset(0, 3), // changes position of shadow
             ),
              ]
    
                 ),
                 alignment: Alignment.center,
                  ),
                ),
            ),
          
          
          
          Center(child: IconButton( icon: const Icon(CupertinoIcons.bell, color: Colors.black,), onPressed: () {  },))
      ])],
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
