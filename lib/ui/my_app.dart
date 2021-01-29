import 'package:flutter/material.dart';
import 'package:flutter_app/ui/imageAndButtonTypes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blueGrey, accentColor: Colors.blueGrey),
      home: new Scaffold(
          appBar: AppBar(
            title: Text("- Flutter Example One -",
                style: TextStyle(fontSize: 24.0, color: Colors.white)),
          ),
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
          body: ImageAndButtonTypes()
          //FloatingActionButtonLocation sayesinde butonumuzu ekranda istediğimiz bir yere yerleştirebiliyoruz.
          //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          ),
    );
  }
}
