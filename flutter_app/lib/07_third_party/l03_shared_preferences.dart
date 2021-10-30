import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("shared_preferences"),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings),
        ],
        elevation: 0,
      ),
      body: const SharedPreferencesDemo(),
    );
  }
}

class SharedPreferencesDemo extends StatelessWidget {
  const SharedPreferencesDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
            onPressed: () async {
              // SharedPreferences p = await SharedPreferences.getInstance();
              // p.setInt("counter", 1);
            },
            child: const Text("add")),
        OutlinedButton(
            onPressed: () async {
              // SharedPreferences p = await SharedPreferences.getInstance();
              // p.remove("counter");
            },
            child: const Text("remove")),
        OutlinedButton(
            onPressed: () async {
              // SharedPreferences p = await SharedPreferences.getInstance();
              // p.clear();
            },
            child: const Text("clear")),
        OutlinedButton(
            onPressed: () async {
              // SharedPreferences p = await SharedPreferences.getInstance();
              // p.setInt("counter", 2);
            },
            child: const Text("update")),
        OutlinedButton(
            onPressed: () async {
              // SharedPreferences p = await SharedPreferences.getInstance();
              // print(p.getInt("counter"));
            },
            child: const Text("get")),
      ],
    );
  }
}
