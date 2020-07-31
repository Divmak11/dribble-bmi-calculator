import 'package:flutter/material.dart';
import '../size_config.dart';

class MaleFemaleBox extends StatefulWidget {
  String text;
  IconData icon;
  Color colordata;
  MaleFemaleBox(this.text,this.icon,this.colordata);

  @override
  _MaleFemaleBoxState createState() => _MaleFemaleBoxState();
}

class _MaleFemaleBoxState extends State<MaleFemaleBox> {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: displayHeight(context)*0.2,
      width: displayWidth(context) * 0.45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color:Theme.of(context).buttonColor,
      ),
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(widget.icon,color: widget.colordata,size: 70,),
              Text(widget.text,style: TextStyle(
                fontSize: 20,
                color: widget.colordata
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
