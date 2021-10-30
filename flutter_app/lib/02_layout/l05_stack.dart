import 'package:flutter/material.dart';

// 层叠布局
// Stack 层叠组件
// - alignment 子组件对齐方式
// - textDirection 子组件排列顺序
// Positioned 绝对定位组件
// - child 子组件
// - left top right bottom
// - width height
// NetworkImage 网络图片组件
// - NetworkImage('url')
// - <uses-permission ...>

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack"),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings),
        ],
        elevation: 0,
      ),
      body: StackDemo(),
    );
  }
}

class StackDemo extends StatelessWidget {
  StackDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
