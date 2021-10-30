import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("dio"),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings),
        ],
        elevation: 0,
      ),
      body: const DioDemo(),
    );
  }
}

class DioDemo extends StatelessWidget {
  const DioDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          child: const Text("点击发送请求"),
          onPressed: () {
            print("点击了");
            getIpAddress();
          }),
    );
  }

  void getIpAddress() async {
    try {
      const url = "https://httpbin.org/ip";
      Response response = await Dio().get(url);
      String ip = response.data['origin'];
      print(ip);
    } catch (e) {
      print(e);
    }
  }
}
