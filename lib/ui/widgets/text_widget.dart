

import 'package:flutter/widgets.dart';

class TextWidget extends StatelessWidget {
   TextWidget({Key?key,
   required this.text,
   required this.textStyle
    }):super(key: key);
  
  final String text;
  final TextStyle textStyle;

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
