import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 231, 231),
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        elevation: 0,
        leading: Builder(builder: (BuildContext context) {
      return IconButton(
        icon: const Icon(CupertinoIcons.back, color:  Color.fromARGB(255, 56, 55, 55)),
        onPressed: () { Scaffold.of(context).openDrawer(); },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      );
    },),
       backgroundColor: Colors.transparent,
        title: const Text('Créer mon compte',style: TextStyle(fontSize: 18,
          fontWeight: FontWeight.normal, color: Color.fromARGB(255, 56, 55, 55)),),
      ),
      body:
        Column(
           
            children:  const [
            
            Padding(
              padding: EdgeInsets.only(top: 10,left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('les champs marqués dune astériqsues\n sont obligatoire',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
              ),
            ),
            SizedBox(height: 10,),
            TextFormField("Nom*"),

            
          
            // ignore: prefer_const_literals_to_create_immutables
           
            
          
          ]),
        
      );
    
  }
}