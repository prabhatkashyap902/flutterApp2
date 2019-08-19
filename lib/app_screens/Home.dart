import 'package:flutter/material.dart';
import './ListViewScreen.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10, bottom: 10, top: 40),
        alignment: Alignment.center,
        color: Colors.deepPurpleAccent,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Center(
                          child: Text(
                    "Flight1",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ))),
                  Expanded(
                      child: Center(
                          child: Text(
                    "Flight2",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ))),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Center(
                          child: Text(
                    "Flight3",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ))),
                  Expanded(
                      child: Center(
                          child: Text(
                    "Flight4",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ))),
                ],
              ),
            ),
            Images(),
            ButtonBook(),
          ],
        ));
  }
}

class Images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/ticket.jpg');
    Image image = Image(
      image: assetImage,
      width: 150,
      height: 150,
    );

    return Container(
      child: image,
    );
  }
}
class ButtonBook extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      width: 250,
      height: 50,
      child: RaisedButton(
          color: Colors.amber,
          textColor: Colors.white,
          child: Text("Book my Flight"),

          elevation: 10,
          onPressed: (){
              Scaffold(
                appBar: AppBar(title: Text("This is ListView Page"),),
                body: ListViewScreen(),
              );
          }
             // bookFlight(context)

      ),
    );

  }
  void bookFlight(BuildContext context){
    var alertDialog = AlertDialog(
      title:Text("Your Flight has been Booked!"),
      content: Text("Have a plesant Flight"),
    );

    showDialog(
        context: context, builder: (BuildContext context)=>alertDialog);
  }
}
