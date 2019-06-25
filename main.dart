import 'package:flutter/material.dart';
import 'package:bootcampassignment/Second.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(80.0),
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage("images/22.png"),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter UserName",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          fillColor: Colors.amber),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)))),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Second()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: Text("Login"),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
