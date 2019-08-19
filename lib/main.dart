import 'package:flutter/material.dart';
import './app_screens/Home.dart';
import 'app_screens/ListViewScreen.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Exploring UI Widgets",
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is Flutter App"),
          backgroundColor: Colors.pink,
        ),
        body: ListItem(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pink,
          onPressed: () {
            debugPrint("FAB Pressed!");
          },
          child: Icon(Icons.add),
          tooltip: "Add more item",
        ),
        // ListViewScreen(),
      )));
}

List<String> generateList() {
  return List<String>.generate(100, (counter) => "Item $counter");
}

Widget ListItem() {
  var Lists = generateList();
  var listview = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      title: Text(Lists[index]),
      onTap: () {
        showSnackBar(context, index);
        //debugPrint("Item $index Printed!");
      },
    );
  });
  return listview;
}

void showSnackBar(BuildContext context, int index) {
  var snackBar = SnackBar(
    content: Text(
      "you just tapped on Item $index",
    ),
    action: SnackBarAction(
        label: "UNDO",
        onPressed: () {
          debugPrint("performing dummy debug operation!");
        }),
  );
  Scaffold.of(context).showSnackBar(snackBar);
}
