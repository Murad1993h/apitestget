import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewHomePage extends StatefulWidget {
  final String s;
  final String t;
  const NewHomePage({super.key, required this.s, required this.t});

  @override
  State<NewHomePage> createState() => _NewHomePageState();
}

class _NewHomePageState extends State<NewHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        elevation: 0,
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text("API new page new data"),
      ),
      backgroundColor: Colors.deepOrange,
      body: Column(
        children: [
          ListTile(
            leading: Text("1",style: TextStyle(fontSize: 30,color: Colors.black),),

            title: Text(widget.s,style: TextStyle(fontSize: 30),),
            subtitle: Text(widget.t,style: TextStyle(fontSize: 20,color: Colors.black),),
          ),






        ],
      ),
    );
  }
}
