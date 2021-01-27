import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme:
        ThemeData(primarySwatch: Colors.blueGrey, accentColor: Colors.blueGrey),
    home: new Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Floating Action Button is pressed.");
        },
        child: Icon(
          Icons.account_circle_outlined,
          size: 24.0,
          color: Colors.white,
        ),
      ),
      body: Container(
          child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Icon(
                Icons.add_circle,
                size: 96,
                color: Colors.blueGrey,
              ),
              color: Colors.blueGrey[100],
            ),
            //flex: 2,
          ),
          Expanded(
            child: Container(
              child: Icon(
                Icons.add_circle_outline_sharp,
                size: 96,
                color: Colors.blueGrey,
              ),
              color: Colors.blueGrey[100],
            ),
            //flex: 2,
          ),
          Expanded(
            child: Container(
              child: Icon(
                Icons.add_circle_outline_sharp,
                size: 96,
                color: Colors.blueGrey,
              ),
              color: Colors.blueGrey[100],
            ),
            //flex: 2,
          ),
          Expanded(
            child: Container(
              child: Icon(
                Icons.add_circle_outline_sharp,
                size: 96,
                color: Colors.blueGrey,
              ),
              color: Colors.blueGrey[100],
            ),
            //flex: 2,
          ),
        ],
      )),
      //FloatingActionButtonLocation sayesinde butonumuzu ekranda istediğimiz bir yere yerleştirebiliyoruz.
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: Text("- Flutter Example One -",
            style: TextStyle(fontSize: 24.0, color: Colors.white)),
      ),
    ),
  ));
}
