import 'package:flutter/material.dart';

// 线性布局
// Column
// - Column 中的主轴方向是垂直方向
// - mainAxisAlignment: 主轴对齐方式
// - crossAxisAlignment: 交叉轴对齐方式
// - children: 内容
// Row

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Linear"),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings),
        ],
        elevation: 0,
      ),
      body: const LinearDemo(),
    );
  }
}

class LinearDemo extends StatelessWidget {
  const LinearDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.settings_accessibility, size: 50),
          Icon(Icons.settings_accessibility, size: 50),
          Icon(Icons.settings_accessibility, size: 50),
          Icon(Icons.settings_accessibility, size: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.settings_accessibility, size: 50),
              Icon(Icons.settings_accessibility, size: 50),
              Icon(Icons.settings_accessibility, size: 50),
              Icon(Icons.settings_accessibility, size: 50),
            ],
          ),
        ],
      ),
    );
  }
}
