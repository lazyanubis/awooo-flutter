import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("首页"),
          leading: Icon(Icons.menu),
          actions: [Icon(Icons.settings)],
          elevation: 0,
          centerTitle: true),
      body: HelloFlutter(),
    );
  }
}

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Text(
      "hello world",
      textDirection: TextDirection.ltr,
    )));
  }
}
