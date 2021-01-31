import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class EfficientListExample extends StatelessWidget {
  List<Student> allStudents = [];

  @override
  Widget build(BuildContext context) {
    getStudentDatas();
    // TODO: implement build
    return ListView.separated(
        separatorBuilder: (context, index) {
          if (index % 2 == 0 && index != 0) {
            return Divider(
              color: Colors.blueGrey,
              thickness: 4,
              height: 12,
              indent: 20,
              endIndent: 20,
            );
          } else {
            return Divider(
              thickness: 2,
              height: 12,
              indent: 20,
              endIndent: 20,
            );
          }
        },
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(14),
            child: Card(
              color:
                  index % 2 == 0 ? Colors.grey.shade400 : Colors.grey.shade600,
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.account_circle_outlined),
                title: Text(allStudents[index]._name),
                subtitle: Text(allStudents[index]._description),
                trailing: Icon(Icons.assignment_turned_in_outlined),
                onTap: () {
                  debugPrint("The chosen element with tap: $index");
                  showToastMessage(index, context, false);
                  showAlertDialog(context, index);
                },
                onLongPress: () {
                  showToastMessage(index, context, true);
                },
              ),
            ),
          );
        });
  }

  void getStudentDatas() {
    allStudents = List.generate(
        300,
        (index) => Student("Student $index Name", "Student $index Description",
            index % 2 == 0 ? true : false));
  }

  void showToastMessage(int index, BuildContext context, bool longPress) {
    showToast(
        longPress
            ? "Long Pressed: ${allStudents[index].toString()}"
            : "Tap: ${allStudents[index]._name}",
        backgroundColor: Colors.blueGrey,
        context: context,
        animation: StyledToastAnimation.slideFromBottom,
        reverseAnimation: StyledToastAnimation.slideToBottom,
        startOffset: Offset(0.0, 3.0),
        reverseEndOffset: Offset(0.0, 3.0),
        position: StyledToastPosition.bottom,
        duration: Duration(seconds: 4),
        //Animation duration   animDuration * 2 <= duration
        animDuration: Duration(seconds: 1),
        curve: Curves.elasticOut,
        reverseCurve: Curves.fastOutSlowIn);
  }

  void showAlertDialog(BuildContext context, int index) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text("Alert Dialog Title"),
            content: SingleChildScrollView(
                child: ListBody(
              children: <Widget>[
                // In case of too many widgets, the scroll appears.
                Text("Student Name: ${allStudents[index]._name}"),
                Text("Description: ${allStudents[index]._description}"),
                Text(
                    "Gender(True = Male, False = Female): ${allStudents[index]._gender}"),
              ],
            )),
            actions: <Widget>[
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Okay.")),
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Close."),
                    color: Colors.redAccent,
                  )
                ],
              )
            ],
          );
        });
  }
}

class Student {
  String _name;
  String _description;
  bool _gender;

  Student(this._name, this._description, this._gender);

  @override
  String toString() {
    // TODO: implement toString
    return "The chosen student's name: $_name, description: $_description.";
  }
}
