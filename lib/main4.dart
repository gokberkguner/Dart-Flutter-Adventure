import 'package:flutter/material.dart';

import 'listCourses.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Flutter Courses",
    theme: ThemeData(primarySwatch: Colors.blueGrey),
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "List Part",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListCourses(),
    ),
  ));
}
