import 'package:flutter/material.dart';
import 'package:bootcampassignment/Image.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image List"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close), onPressed: () => Navigator.pop(context))
        ],
      ),
      body: ListView.builder(
        itemCount: ImgClass.img.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child:Card(
                  elevation: 5,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(ImgClass.img[index]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text("Image : ${index + 1}",style: TextStyle(fontSize: 24),),
                      ),
                    ],
                  ),
            ),
          );
        },
      ),
    );
  }
}
