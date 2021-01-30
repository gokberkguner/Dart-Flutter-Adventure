import 'package:flutter/material.dart';

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
}

class Student {
  String _name;
  String _description;
  bool _gender;

  Student(this._name, this._description, this._gender);
}
