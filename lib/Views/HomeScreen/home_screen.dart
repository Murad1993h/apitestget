import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text("API TEST GET"),
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("1"),
            ),
            title: Text(
              "MD Murad",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700),
            ),
            subtitle: Text(
              "muradmd61@gmail.com",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
