import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return getListView();
  }
  Widget getListView(){
    var listView = ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("This is ListView Title"),
          subtitle: Text("This is ListView SubTitle"),
          trailing: Icon(Icons.wb_sunny),
        ),
        ListTile(
          leading: Icon(Icons.accessibility),
          title: Text("This is 2nd list"),
          subtitle: Text("This is 2nd sublist"),
          trailing: Icon(Icons.ac_unit),
        )
      ],
    );

    return listView;
  }

}