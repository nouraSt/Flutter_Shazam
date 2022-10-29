import 'dart:io';

import 'package:first_project/ui/widgets/green_widget.dart';
import 'package:first_project/ui/widgets/my_appBar.widget.dart';
import 'package:first_project/ui/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';




import '../../services/service.dart';
import '../widgets/my_navigation_bar.widget.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String? image;
  Service service = Service();
  final _addFormKey = GlobalKey<FormState>();
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    
  }
 
 Future _getFromGallery() async {
 
  final imagee = await ImagePicker().pickImage(source: ImageSource.gallery);
  service.addImage(imagee!.path);
  if(imagee == null) return;
  final imageTemp = service.getImg();
  setState(() {
   this.image = imageTemp as String?;
  });
}

Future _getFromCamera() async {
  print('open camera');
    final pickedFile = await ImagePicker().getImage(
        source: ImageSource.camera,
        maxWidth: 1800,
        maxHeight: 1800,
    );
    service.addImage(pickedFile!.path);
    if (pickedFile != null) {
        final imageFile = service.getImg();
        setState(() {
          image = imageFile as String?;
        });
   }
   
    
}
  @override
  Widget build(BuildContext context) {
     
     
  
    return  Scaffold(
      backgroundColor: Colors.transparent,
      body: Align(
        
        alignment: Alignment.center,
        child: Column(
          
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
        //    const SizedBox(
          //    height: 10,
          //  ),
          
           
          //  TextWidget(text: 'A gagner cette semaine',textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w100, color:Color.fromARGB(255, 92, 91, 91)), ),
          //  SizedBox(height: 5,),
          //  TextWidget(text: '500€ en chèques cadeaux',textStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Color.fromARGB(255, 7, 7, 7)), ),
         //   SizedBox(height: 5,),
          //  TextWidget(text: 'des bons cadeau ou de réduction\n dans votre centre paris italie 2',textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 12, 12, 12)), ),
          //  SizedBox(height: 10),
        
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        child: FittedBox(
                          fit:BoxFit.fitWidth,
                          child: TextButton(onPressed: () { 
                            _getFromCamera();
                           },
                           
                          child: GreenButton(Icon(CupertinoIcons.photo_camera),
                          'Photo', )),
                        ),
                      ),
                      FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0),
                          child: TextButton(onPressed: () { 
                            _getFromGallery();
                           },
                          child: GreenButton(Icon(CupertinoIcons.square_arrow_up),'importer', )),
                        ),
                      ),
                    ],
                  ),
                Expanded(
                   child: SizedBox(
                     child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width-40,
                        color: Color.fromARGB(255, 255, 140, 174),
                        child:image !=null?  //Center(child: 
                        Image.network(image!):const CircularProgressIndicator() ,
                        )
                        ),
                      ),
                   
                 
                 
                ],
              ),
            )
          ],
        ),
      ),
     
      bottomNavigationBar: const MyNavigationBar(),
    );
    }
}