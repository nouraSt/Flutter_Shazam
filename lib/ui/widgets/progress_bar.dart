import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    
    return CircularPercentIndicator(
                  radius: 15.0,
                  lineWidth: 2.0,
                  
                  percent: 0.6,
                  center: new Text("x2"),
                  progressColor: Colors.red,
                );
}
}