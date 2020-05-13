import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    debugPrint("context");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text("SQLite"),
        ),
        body:  Stack(
//            fit: StackFit.expand,
            children: <Widget>[
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              Expanded(
                  child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        "Click on Any of the button to toggle",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.deepOrangeAccent,
                            fontWeight: FontWeight.w500),
                      ))),

              expandedBtn(context),


                ],
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Icon(Icons.star, size: 50),
              ),
            ],

            ),
      ),
    );
  }

  Widget expandedBtn(BuildContext context) {
    return Expanded(
        child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: const [
                  Colors.red,
                  Colors.blue,
                ],
              ),
                color: Colors.deepOrange,
              image: DecorationImage(
                fit: BoxFit.fitWidth,

                image: NetworkImage(
                  'https://flutter.io/images/catalog-widget-placeholder.png',
                ),
              ),
            ),
            padding: EdgeInsets.all(5.0),
            child: IntrinsicWidth(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                RaisedButton(
                  onPressed: () => debugPrint("The button was clicked"),
                  child: Text("Short"),
                ),
                RaisedButton(
                  onPressed: () => debugPrint("Medium button was clicked"),
                  child: Text("Medium"),
                ),
                RaisedButton(
                  onPressed: () => debugPrint("Longest button was clicked"),
                  child: Text("Largest button"),
                )
              ],
            ))));
  }
}
