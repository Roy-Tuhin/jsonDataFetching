import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  var data;
  Page2(this.data);

  _Page2State createState() => _Page2State(this.data);
}

class _Page2State extends State<Page2> {
  var dataRef;
  _Page2State(this.dataRef);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page2"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Username: ${dataRef['username']}"),
              Text("Email: ${dataRef['email']}"),
              Divider(),
              RaisedButton(
                  child: Text("GoTo DashBoard"),
                  onPressed: () {
                    Navigator.pop(context); //popOut this page and goto previous
                  }),
            ],
          ),
        ));
  }
}
