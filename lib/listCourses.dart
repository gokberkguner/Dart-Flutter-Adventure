import 'package:flutter/material.dart';

class ListCourses extends StatelessWidget {
  // Creating database for list.
  List<int> listNumbers = List.generate(8, (index) => index);
  List<String> listSubTitles =
      List.generate(300, (index) => "List Element Sub Title $index");

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: listNumbers
          .map(
            (forNowElement) => Column(
              children: <Widget>[
                Container(
                  child: Card(
                    color: Colors.grey[400],
                    margin: EdgeInsets.all(10),
                    elevation: 10,
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.account_circle),
                        radius: 12,
                      ),
                      title: Text("List Element Title: $forNowElement"),
                      subtitle: Text(listSubTitles[forNowElement]),
                      trailing: Icon(Icons.add_circle_outline_sharp),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.blueGrey,
                  indent: 20,
                  endIndent: 20,
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}

/*
<Widget>[

 */
