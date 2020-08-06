import 'package:bmicalculator/logic/bloc.dart';
import 'package:bmicalculator/main.dart';
import 'package:flutter/material.dart';
class SideDrawer extends StatefulWidget {

  AsyncSnapshot blocData;
  SideDrawer(this.blocData);
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {

  @override
  Widget build(BuildContext context) {
        return Drawer(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('Change Theme'),
                trailing: Switch(
                    value: widget.blocData.data,
                    onChanged: bloc.changeTheme),
              )
            ],
          ),
    );
  }
}
