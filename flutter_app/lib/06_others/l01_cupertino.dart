import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cupertino"),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings),
        ],
        elevation: 0,
      ),
      body: CupertinoDemo(),
    );
  }
}

class CupertinoDemo extends StatelessWidget {
  const CupertinoDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return Column(
        children: [
          Text("ios风格22"),
          CupertinoDemo2(),
        ],
      );
    }
    return Column(
      children: [
        Text("安卓风格"),
        MaterialDemo(),
      ],
    );
  }
}

class MaterialDemo extends StatelessWidget {
  const MaterialDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        title: Text("提示"),
        content: Text("确认删除吗？"),
        actions: [
          TextButton(onPressed: () => print("cancel"), child: Text("取消")),
          TextButton(onPressed: () => print("sure"), child: Text("确定")),
        ],
      ),
    );
  }
}

class CupertinoDemo2 extends StatelessWidget {
  const CupertinoDemo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoAlertDialog(
        title: Text("提示"),
        content: Text("确认删除吗？"),
        actions: [
          TextButton(onPressed: () => print("cancel"), child: Text("取消")),
          TextButton(onPressed: () => print("sure"), child: Text("确定")),
        ],
      ),
    );
  }
}
