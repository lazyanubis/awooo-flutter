import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button"),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings),
        ],
        elevation: 0,
      ),
      body: ButtonDemo(),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Wrap(
        children: [
          TextButton(
            onPressed: () {
              print("pressed");
            },
            child: Text("TextButton"),
          ),
          ElevatedButton(
            onPressed: () {
              print("pressed");
            },
            child: Text("TextButton"),
          ),
          OutlinedButton(
            onPressed: () {
              print("pressed");
            },
            child: Text("TextButton"),
          ),
        ],
      ),
    );
  }
}
