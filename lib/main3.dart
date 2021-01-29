import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        /*textTheme: TextTheme(
          display3: TextStyle(fontSize: 12),
        ), */
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      title: "MaterialApp Title",
      home: MyHomePage(
        title: "My Home Page",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  int counter = 0;

  MyHomePage({this.title}) {
    debugPrint("MyHomePage Stateful Widget Constructor.");
  }

  @override
  State<StatefulWidget> createState() {
    debugPrint("MyHomePage create state is triggered.");
    // TODO: implement createState
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState() {
    debugPrint("MyHomePageState constructor is triggered.");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("MyHomePageState build method is triggered.");
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _increaseCounterValue();
            debugPrint("Counter value increased. Set State called.");
          });
        },
        child: Icon(Icons.add_circle_outline_sharp),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Increase "),
              color: Colors.green[400],
              onPressed: () {
                setState(() {
                  _increaseCounterValue();
                });
              },
            ),
            Text("${widget.counter}",
                style: Theme.of(context).textTheme.display2.copyWith(
                    color: widget.counter <= 0
                        ? Colors.red[400]
                        : Colors.green[400])),
            RaisedButton(
              child: Text("Dicrease"),
              color: Colors.red[400],
              onPressed: () {
                setState(() {
                  _dicreaseCounterValue();
                });
              },
            )
          ],
        ),
      ),
    );
  }

  void _increaseCounterValue() {
    widget.counter++;
    debugPrint("Counter Value: ${widget.counter}");
  }

  void _dicreaseCounterValue() {
    widget.counter--;
    debugPrint("Counter Value: ${widget.counter}");
  }
}
