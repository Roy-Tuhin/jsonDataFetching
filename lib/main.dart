import 'package:flutter/material.dart';
import 'package:task2/Page2.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() {
  runApp(MaterialApp(
    home: Dashboard(),
  ));
}

class Dashboard extends StatefulWidget {
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List posts;

  Future<bool> _getPosts() async {
    String serviceUrl = "https://jsonplaceholder.typicode.com/users";
    var response = await http.get(serviceUrl);
    setState(() {
      posts = json.decode(response.body.toString());
    });
    return true;
  }

  @override
  // ignore: must_call_super
  void initState() {
    _getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard//Page 1"),
        ),
        body: new ListView.builder(
          padding: new EdgeInsets.all(8.0),
          itemCount: posts.length == null
              ? 0
              : posts.length, // how many data in our list
          itemBuilder: (BuildContext context, int index) {
            return Card(
              shadowColor: Color(0xFF678756),
              elevation: 3.7,
              child: ListTile(
                title: Text(posts[index]['username']),
                subtitle: Text(posts[index]['email']),
                onTap: () {
                  Route route = MaterialPageRoute(
                      builder: (context) => Page2(posts[index]));
                  Navigator.push(context, route);
                },
              ),
            );
          },
        ));
  }
}

//================================================================================  F U T U R E    R E F F E R E N C E  =========================================================

// import 'package:flutter/material.dart';
// import 'package:task2/Page2.dart';
// import 'package:http/http.dart' as http;
// import 'dart:async';
// import 'dart:convert';

// void main() {
//   runApp(MaterialApp(
//     home: Dashboard(),
//   ));
// }

// class Dashboard extends StatefulWidget {
//   _DashboardState createState() => _DashboardState();
// }

// class _DashboardState extends State<Dashboard> {
//   List posts;
//   Future<bool> _getPosts() async {
//     String serviceUrl = "https://jsonplaceholder.typicode.com/posts";
//     var response = await http.get(serviceUrl);
//     setState(() {
//       posts = json.decode(response.body.toString());
//     });

//     return true;
//   }

//   @override
//   // ignore: must_call_super
//   void initState() {
//     _getPosts();
//   }

//   // List people = [
//   //   {"name": "Tuhin", "email": "tuhinroy881@gmail.com"},
//   //   {"name": "Rahul", "email": "rahul@gmail.com"},
//   // ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Dashboard//Page 1"),
//         ),
//         body: new ListView.builder(
//           padding: new EdgeInsets.all(8.0),
//           itemCount: posts.length, // how many data in our list
//           itemBuilder: (BuildContext context, int index) {
//             return ListTile(
//               title: Text(posts[index]['title']),
//               // subtitle: Text(people[index]['email']),
//               onTap: () {
//                 // print(posts[index]);
//                 Route route = MaterialPageRoute(
//                     builder: (context) => Page2(posts[index]));
//                 Navigator.push(context, route);
//               },
//             );
//           },
//         ));
//   }
// }

//================================================================================  F U T U R E    R E F F E R E N C E  =========================================================
// import 'package:flutter/material.dart';
// import 'package:task2/Page2.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Dashboard(),
//   ));
// }

// class Dashboard extends StatefulWidget {
//   _DashboardState createState() => _DashboardState();
// }

// class _DashboardState extends State<Dashboard> {
//   List people = [
//     {"name": "Tuhin", "email": "tuhinroy881@gmail.com"},
//     {"name": "Rahul", "email": "rahul@gmail.com"},
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Dashboard//Page 1"),
//         ),
//         body: new ListView.builder(
//           padding: new EdgeInsets.all(8.0),
//           itemCount: people.length,
//           itemBuilder: (BuildContext context, int index) {
//             return ListTile(
//               title: Text(people[index]['name']),
//               subtitle: Text(people[index]['email']),
//               onTap: () {
//                 print(people[index]);
//               },
//             );
//           },
//         ));
//   }
// }

//================================================================================F U T U R E  R E F F E R E N C E=========================================================
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Page 1"),
//             RaisedButton(
//               child: Text("GoTo page2"),
//               onPressed: () {
//                 var message = "Hello Tuhin";
//                 Route route =
//                     MaterialPageRoute(builder: (context) => Page2(message));
//                 Navigator.push(context, route);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Listiew Concept***
