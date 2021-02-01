import 'package:flutter/material.dart';

class GridVievExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        itemCount: 100,
        padding: EdgeInsets.all(20),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.all(10),
            color: Colors.blueGrey,
            elevation: 4,
            child: Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              color: Colors.grey[100 * ((index + 1) % 8)],
              child: Text("Student ${index + 1}'s Picture.",
                  textAlign: TextAlign.center),
            ),
          );
        });
  }
}

/*
GridView.count(
      crossAxisCount: 2,
      scrollDirection: Axis.horizontal,
      reverse: false,
      primary: false,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.grey.shade400,
          child: Text("Hello Flutter! 1", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.grey.shade400,
          child: Text("Hello Flutter! 2", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.grey.shade400,
          child: Text("Hello Flutter! 3", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.grey.shade400,
          child: Text("Hello Flutter! 4", textAlign: TextAlign.center),
        ),
      ],
    );


  *****************************************************************************

    GridView.extent(
      maxCrossAxisExtent: 500,
      scrollDirection: Axis.vertical,
      reverse: false,
      primary: false,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.grey.shade400,
          child: Text("Hello Flutter! 1", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.grey.shade400,
          child: Text("Hello Flutter! 2", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.grey.shade400,
          child: Text("Hello Flutter! 3", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.grey.shade400,
          child: Text("Hello Flutter! 4", textAlign: TextAlign.center),
        ),
      ],
    );
 */
