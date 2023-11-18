import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(child: Text('Ask Me Anything')),
      ),
      body: MyApp(),
    ),
  ),);
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num=1;
  void solve(){
    setState(() {
      num=Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: TextButton(
            onPressed: (){
              solve();
            },
              child: Image.asset('images/ball$num.png')),
        ),
      ],
    );
  }
}


