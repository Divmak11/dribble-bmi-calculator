import 'package:bmicalculator/logic/bmi_logic.dart';
import 'package:bmicalculator/screen/result_page.dart';
import 'package:bmicalculator/screen/selection_page.dart';
import 'package:bmicalculator/size_config.dart';
import 'package:bmicalculator/widgets/drawer.dart';
import 'package:flutter/material.dart';


class SelectorPage extends StatefulWidget {

  AsyncSnapshot data;
  SelectorPage(this.data);
  @override
  _SelectorPageState createState() => _SelectorPageState();
}

class _SelectorPageState extends State<SelectorPage> {

  int selectedPage = 1;
  String buttonText = 'CALCULATE YOUR BMI';
  double bmiResult;
  static BMI bmiObj = BMI();

  static Map<int,Widget> pages ={
    1 : SelectionPage(bmiObj),
    2 : ResultPage(bmiObj)
  };

  void changePage(){
    if(selectedPage == 1) {
      setState(() {
        selectedPage = 2;
        buttonText = 'RE-CALCULATE YOUR BMI';
      });
    }
    else
    if(selectedPage == 2) {
      setState(() {
        selectedPage = 1;
        buttonText = 'CALCULATE YOUR BMI';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: SideDrawer(widget.data),
        appBar: AppBar(
          elevation: 20,
          title: Text('BMI Calculator',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: displayHeight(context) * 0.9,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16.0, top: 10,bottom: 10),
                child: pages[selectedPage]
              ),
            ),
            Container(
              height: displayHeight(context) * 0.1,
              width: double.infinity,
              child: RaisedButton(
                color: Theme.of(context).errorColor,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onPressed: () {
                    changePage();
                  },
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    buttonText,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
