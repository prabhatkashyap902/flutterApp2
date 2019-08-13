import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          alignment: Alignment.center,
          color: Colors.deepPurpleAccent,
          margin: EdgeInsets.all(20),
          child: Text(
            "Flight",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              decoration: TextDecoration.none,
              color: Colors.white,
                fontSize: 20,

            ),
          ),
        )
    );
  }
}