import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SOLVECASE'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[

                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enrollment Number',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: DropdownButton(
                    value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text("First Sem"),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Third Sem"),
                          value: 2,
                        ),
                            ],
    onChanged: (value) {
      setState(() {
        _value = value;
      });
    })),

                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Save'),
                      onPressed: () {
                        print(nameController.text);

                      },
                    )),

              ],
            )));
  }
}