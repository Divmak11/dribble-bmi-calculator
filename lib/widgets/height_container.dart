import 'package:bmicalculator/logic/bmi_logic.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';
class HeightContainer extends StatefulWidget {

  BMI bmi;
  HeightContainer(this.bmi);
  @override
  _HeightContainerState createState() => _HeightContainerState();
}

class _HeightContainerState extends State<HeightContainer> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: displayHeight(context)*0.3,
      width: displayWidth(context) ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Theme.of(context).buttonColor,
      ),
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('Height',style: TextStyle(
                  fontSize: 25,
                  color: Colors.white
              ),),
              Text(value.toStringAsFixed(1)+ ' cm',style: TextStyle(
                  fontSize: displayWidth(context) * 0.15,
                  color: Colors.white
              ),),
              Container(
                width: displayWidth(context) * 0.8,
                child: SliderTheme(
                  data: SliderThemeData(
                    trackHeight: 3,
                    activeTrackColor: Colors.white,
                    inactiveTickMarkColor: Colors.grey,
                    thumbColor: Colors.pink,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 16)
                  ),
                  child: Slider(
                      value: value,
                      onChanged: (val) {
                        setState(() {
                         widget.bmi.assignHeight(val);
                          value = val;
                        });
                      },
                    min: 0,
                    max: 200,
                   // activeColor: Color.fromRGBO(235, 21, 85, 1),
                   // inactiveColor: Colors.white,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
