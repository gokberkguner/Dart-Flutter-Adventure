import 'package:flutter/material.dart';

class ImageAndButtonTypes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          child: Text(
            "Images and Button Types",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          margin: EdgeInsets.all(15.0),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.blueGrey[200],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/artberk.jpg",
                        width: 70.0,
                        height: 70.0,
                      ),
                      Text("Asset Image"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.blueGrey[200],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.network(
                          "https://static-s.aa-cdn.net/img/ios/474286241/a5027f142b75bb8f38db4eebd236f778?v=1"),
                      Text("Network Image"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.blueGrey[200],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://lh3.googleusercontent.com/ogw/ADGmqu8bdyObwEPZBDwkX7n1KEpLIhiXE4Py-DXNd2M5=s83-c-mo"),
                        radius: 30,
                      ),
                      Text("Circle Avatar"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.blueGrey[200],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FadeInImage.assetNetwork(
                          placeholder: "assets/images/loading.gif",
                          image:
                              "https://static-s.aa-cdn.net/img/ios/474286241/a5027f142b75bb8f38db4eebd236f778?v=1"),
                      Text("FadeInImage"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.blueGrey[200],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlutterLogo(
                        size: 60,
                        style: FlutterLogoStyle.horizontal,
                        textColor: Colors.blueGrey,
                      ),
                      Text("FlutterLogo"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.blueGrey[200],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: Placeholder(
                          color: Colors.blueGrey,
                          strokeWidth: 6.0,
                        ),
                      ),
                      Text("Placeholder Widget"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RaisedButton(
                child: Text("Gökberk Güner."),
                color: Colors.blueGrey,
                onPressed: () {
                  debugPrint("Normal lambda expression.");
                  debugPrint("Second one.");
                },
              ),
              RaisedButton(
                child: Text("Introduction to Flutter and Dart"),
                elevation: 12,
                color: Colors.blueGrey[200],
                onPressed: () => debugPrint("Fat Arrow Function!"),
              ),
              RaisedButton(
                child: Text("Keep going my friendo!"),
                color: Colors.blueGrey,
                onPressed: () {
                  longMethod();
                },
              ),
              RaisedButton(
                child: Text("Yep!"),
                elevation: 12,
                color: Colors.blueGrey[200],
                onPressed: longMethod,
              ),
              IconButton(
                icon: Icon(
                  Icons.add_alert_outlined,
                  size: 32,
                  color: Colors.blueGrey,
                ),
                onPressed: () {
                  debugPrint("Icon button clicked.");
                },
              ),
              FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Flat Button",
                    style: TextStyle(fontSize: 24),
                  ))
            ],
          ),
        ),
      ],
    );
  }

  void longMethod() {
    debugPrint("So long maaan!");
  }
}
