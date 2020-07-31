import 'package:bmicalculator/logic/bmi_logic.dart';
import 'package:flutter/material.dart';
import '../size_config.dart';

class WeightAgeContainer extends StatefulWidget {

  String title;
  BMI bmi;

  WeightAgeContainer(this.title,this.bmi);
  @override
  _WeightAgeContainerState createState() => _WeightAgeContainerState();
}

class _WeightAgeContainerState extends State<WeightAgeContainer> {

  int value = 25;

  Widget addsubBut(IconData icon)
  {
    return Container(
      width: displayWidth(context) * 0.15,
      height: displayWidth(context) * 0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color.fromRGBO(28, 31,50, 1)
      ),
      child: Align(
        alignment: Alignment.center,
          child: Icon(icon,color: Colors.white,size: 40,))
    );
  }
  
  @override
  Widget build(BuildContext context) {
    if(widget.bmi !=null)
      widget.bmi.assignWeight(value.toDouble());
    return Container(
      height: displayHeight(context)*0.28,
      width: displayWidth(context) * 0.45,
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
              Text(widget.title,style: TextStyle(
                  fontSize: 22,
                  color: Colors.white
              ),),
              Text(value.toString(),style: TextStyle(
                  fontSize: displayWidth(context) * 0.18,
                  color: Colors.white
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {

                      setState(() {
                        value--;
                      });
                    },
                      child: addsubBut(Icons.remove)),
                  GestureDetector(
                    onTap: (){

                      setState(() {
                        value++;
                      });
                    },
                      child: addsubBut(Icons.add))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
