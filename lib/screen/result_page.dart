import 'package:bmicalculator/logic/bmi_logic.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';
class ResultPage extends StatelessWidget {

  BMI bmi;
  ResultPage(this.bmi);

  String observation;
  String verdict;
  @override
  Widget build(BuildContext context) {
    double result = bmi.calculateBMI();
    if(result == null)
      result = 0;
    if(result < 18.5 && result>0)
      {
        observation = "You have a bit low weight. Eat! Eat! and Eat!";
        verdict = 'UNDERWEIGHT';
      }
    if(result >=18.5 && result<=25)
    {
      observation = "You have a normal Body weight. Good Job!";
      verdict = 'NORMAL';
    }
    if(result >= 26 && result<=30)
    {
      observation = "You gained alot of weight. Try to do some exercises.";
      verdict = 'OVERWEIGHT';
    }
    if(result > 30)
    {
      observation = "That's too much.It really affects your health.Try to do some exercises";
      verdict = 'OBESE';
    }
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text('Your Result',style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            fontWeight: FontWeight.bold
          ),),
          Container(
            height: displayHeight(context)*0.7,
            width: displayWidth(context) ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Color.fromRGBO(29, 39,51, 1),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Spacer(flex: 1,),
                    Text(verdict,style: TextStyle(
                        fontSize: 22,
                        letterSpacing: 2,
                        color: Color.fromRGBO(34, 230, 123, 1)
                    ),),
                    Text(result.toStringAsFixed(1),style: TextStyle(
                        fontSize: 120,
                        color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                    Spacer(flex: 1,),
                    Text('Normal BMI Range: ',style: TextStyle(
                        fontSize: 22,
                        color: Color.fromRGBO(132, 133, 144, 1)
                    ),),
                    Text('18.5 - 25 kg/m2',style: TextStyle(
                        fontSize: 22,
                        color: Colors.white
                    ),),
                    Spacer(flex: 1,),
                    Container(
                      width: displayWidth(context) * 0.6,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(observation,
                          maxLines: 3,
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white
                        ),),
                      ),
                    ),
                    Spacer(flex: 2,),
                    Container(
                      width: displayWidth(context) *0.5,
                      height: displayWidth(context) * 0.16,
                      color: Color.fromRGBO(24, 26, 46, 1),
                      child:Align(
                        alignment: Alignment.center,
                        child: Text('SAVE RESULT',style: TextStyle(
                            fontSize: 22,
                            color: Colors.white70
                        ),),
                      ),
                    ),
                    Spacer(flex: 1,)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

