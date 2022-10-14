import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  
  @override
  Widget build(BuildContext context) {
    return  Container(
          decoration: const BoxDecoration(                                                   
          borderRadius: BorderRadius.only(                                           
          topRight: Radius.circular(30), topLeft: Radius.circular(30)),            
    // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [                                                               
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),       
         ],                                                                         
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(                                           
            topRight: Radius.circular(30), topLeft: const Radius.circular(30)),
            child: BottomNavigationBar(
             
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            backgroundColor: Color.fromARGB(255, 9, 49, 10),
            elevation: 0,
            showSelectedLabels:false,
            showUnselectedLabels: false,
            
            // ignore: prefer_const_literals_to_create_immutables
            items: [
                
                const BottomNavigationBarItem(icon: Icon(CupertinoIcons.list_dash,color: Colors.white,),label:"" ) ,
                const BottomNavigationBarItem(icon: Icon(CupertinoIcons.doc_plaintext,color: Colors.white),label:""),
                const BottomNavigationBarItem(icon: Icon(CupertinoIcons.floppy_disk,color: Colors.white),label:"" ),
                const BottomNavigationBarItem(icon: Icon(CupertinoIcons.person,color: Colors.white),label:"")
                 
                   ],
                   
                   onTap: (int index){
            setState(() {
                
            });
                   },
                   ),
          ),
    );
  }
}