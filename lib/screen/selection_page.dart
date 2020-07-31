import 'package:bmicalculator/logic/bmi_logic.dart';
import 'package:bmicalculator/widgets/height_container.dart';
import 'package:bmicalculator/widgets/male_female_box.dart';
import 'package:bmicalculator/widgets/weight_age_container.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';
enum GenderType{
  Male,
  Female,
  none
}
class SelectionPage extends StatefulWidget {

  BMI bmi;
  SelectionPage(this.bmi);
  @override
  _SelectionPageState createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {

  Color mcolor = Colors.white;
  Color fcolor = Colors.white;
  GenderType mselection= GenderType.none;
  GenderType fselection= GenderType.none;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: displayWidth(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  if(mselection==GenderType.none)
                    {
                      mcolor =Color.fromRGBO(141, 142, 152, 1);
                      mselection = GenderType.Male;
                      fselection = GenderType.none;
                      fcolor = Colors.white;
                    }
                  setState(() {
                  });
                },
                  child: MaleFemaleBox('Male', Icons.merge_type,mcolor)),
              GestureDetector(
                onTap: () {
                  if(fselection==GenderType.none)
                  {
                    fcolor =Color.fromRGBO(141, 142, 152, 1);
                    fselection = GenderType.Female;
                    mcolor = Colors.white;
                    mselection = GenderType.none;
                  }
                  setState(() {

                  });
                },
                  child: MaleFemaleBox('Female', Icons.fitness_center,fcolor)),
            ],),
        ),
        HeightContainer(widget.bmi),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              WeightAgeContainer("Weight",widget.bmi),
              WeightAgeContainer('Age',null),
            ],
          ),
        ),

      ],
    );
  }
}
