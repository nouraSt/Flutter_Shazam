
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class TextWidget extends StatelessWidget {
   TextWidget({Key?key,
   required this.text,
   required this.textStyle
    }):super(key: key);
  
  String text='';
  TextStyle textStyle = TextStyle();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text,
      textAlign: TextAlign.center,
                      style:
                          textStyle,)
                          
    );
  }
}