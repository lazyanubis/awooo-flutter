import 'package:flutter/material.dart';

// Card 布局
// Card 卡片
// - child 子组件
// - color 背景色
// - shadowColor 阴影色
// - elevation 阴影高度
// - shape 边框样式
// - margin 外边距
// ListTile 列表瓦片
// - leading
// - title 标题
// - subtitle 子标题

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
    return Column(
      children: [
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.ac_unit,
                  size: 50,
                ),
                title: Text(
                  "1123",
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text("5645"),
              ),
              ListTile(
                title: Text(
                  "1123",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                title: Text(
                  "1123",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
