import 'package:first_project/ui/widgets/orange_button.dart';
import 'package:first_project/ui/widgets/text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:getwidget/getwidget.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  
  @override
  Widget build(BuildContext context) {
    bool  isChecked=false;
    int selectedValue = 0;
    int value=0;
    String selectedItem;
    List<int> listofyears = List.generate(100, (index) => 1980+index);
    var textController = TextEditingController();

 Widget widgetCupertinoPicker() {
       return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
          topRight: Radius.circular(20))
        ),
        height: 400,
        child: CupertinoPicker(
          
        backgroundColor: Colors.white,
        itemExtent: 50,
         looping: true,
         magnification: 1.5,
        children: listofyears
        .map((item) => Center(
        child: Text(
           (item).toString(),
        style: TextStyle(fontSize: 30),
       ),
       ))
      .toList(),
      onSelectedItemChanged: (index) {
         setState(() => selectedValue = index);
         selectedItem = listofyears[index].toString();
         textController.text= selectedItem;
// setState(() {
// selectItem=value.toString();
// });
},
),
);
}
    return Scaffold(
          backgroundColor: Color.fromARGB(255, 231, 231, 231),
          extendBodyBehindAppBar: false,
          appBar: AppBar(
            elevation: 0,
            leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(CupertinoIcons.arrow_left, color:  Color.fromARGB(255, 56, 55, 55)),
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
               
                children:   [
                
                const Padding(
                  padding: EdgeInsets.only(top: 10,left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('les champs marqués dune astériqsues\n sont obligatoire',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                  ),
                ),
                const SizedBox(height: 10,),
                TextFieldd('Nom*:','Nom*:'),
                TextFieldd('Prenom*','Prenom*'),
                TextFieldd('Email*','Email*'),
                TextFieldd('Adresse*','Adresse*'),
                Row(children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width/2,
                    child: TextFieldd('CP*','CP*')),
                  SizedBox(
                    width: MediaQuery.of(context).size.width/2,
                    child: TextFieldd('Ville*','Ville*')),
                ],),
                Padding(
                   padding: const EdgeInsets.all(10),
                  child: TextField(
                          decoration:  InputDecoration(
                            
                            filled: true,
                            hintText: "Année de naissanc",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                              width: 0, 
                              style: BorderStyle.none,
                          ),
                            ),
                            labelText: "Année de naissance*",
                          ),
                        
                          readOnly: true,
                          onTap: () {
                            showCupertinoModalPopup<void>(
                             context: context,
                             builder: (BuildContext context) {
                            return widgetCupertinoPicker();
                           });
                          },
                          controller: textController,
              
                          ),
                ),
               Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right:10 ),
                  child:GFCheckbox(
                    size: GFSize.SMALL,
                    
                   activeBgColor: Color.fromARGB(255, 248, 246, 246),
                        onChanged: (value) {
           
                           },
                    value: isChecked,
                   inactiveIcon: null,
                  ),),
                const Text('jaccepte les conditions d utilisation ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),)
               ],),
               const SizedBox(height: 10,),
              ElevatedButton(onPressed: null,
               style: ElevatedButton.styleFrom(
                        primary:const Color.fromARGB(255, 241, 84, 11),shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0)
                        )
                              ), child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text('Créer mon compte et participer',style:TextStyle(fontSize: 15),)),)]
            )
      
                
              
                // ignore: prefer_const_literals_to_create_immutables
               
                
              
              
      
    );
          
        
      
    
  }
}
