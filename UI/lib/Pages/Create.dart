import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:math';



String id;
final db = Firestore.instance;
final _formKey = GlobalKey<FormState>();
String name;
final textController1 = TextEditingController();
int counter = 0;


class Create extends StatefulWidget {
  @override
  _CreateState createState() => _CreateState();

}

class _CreateState extends State<Create> {
  void onPressed() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text("Create"),),
        body: LayoutBuilder(
            builder: (context,size){
              TextSpan text = new TextSpan(
                text: "Hi",
                style: new TextStyle(
                  fontSize: 25.0,
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                ),
              );
              TextPainter tp = new TextPainter(
                text: text,
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.left,
              );
              tp.layout(maxWidth: size.maxWidth);

              int lines = (tp.size.height / tp.preferredLineHeight).ceil();
              int maxLines = 10;


              return TextField(
                controller: textController1,
                maxLines: lines < maxLines ? null : maxLines,
                style: new TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                ),
              );

            }
        )

    );
  }
}