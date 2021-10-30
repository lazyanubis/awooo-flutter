import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lifecycle"),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings),
        ],
        elevation: 0,
      ),
      body: MyState(),
    );
  }
}

class MyState extends StatefulWidget {
  MyState({Key? key}) : super(key: key);

  @override
  _MyStateState createState() => _MyStateState();
}

class _MyStateState extends State<MyState> {
  int _num = 0;

  @override
  void initState() {
    super.initState();
    _num = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
