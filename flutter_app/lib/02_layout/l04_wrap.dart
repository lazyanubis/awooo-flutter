import 'package:flutter/material.dart';

// 流式布局
// Wrap 解决内容溢出的问题
// - spacing 主轴方向子组件的间距
// - alignment 主轴方向的对齐方式
// - runSpacing 纵轴方向子组件的间距
// - runAlignment 纵轴方向的对齐方式
// Chip 标签
// CircleAvatar 圆形头像

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wrap"),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings),
        ],
        elevation: 0,
      ),
      body: WrapDemo(),
    );
  }
}

class WrapDemo extends StatelessWidget {
  WrapDemo({Key? key}) : super(key: key);

  final List<String> _list = [
    "曹操1",
    "曹操2",
    "曹操3",
    "曹操4",
    "曹操5",
    "曹操6",
    "曹操7",
    "曹操8",
  ];

  List<Widget> list() {
    return _list
        .map((e) => Chip(
              avatar: const CircleAvatar(
                child: Text("魏"),
                backgroundColor: Colors.green,
              ),
              label: Text(e),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Wrap(
          children: list(),
          spacing: 18,
          alignment: WrapAlignment.spaceAround,
          runSpacing: 10,
          runAlignment: WrapAlignment.spaceAround,
        ),
        Wrap(
          children: [
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("蜀"),
              ),
              label: Text("刘备1"),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("蜀"),
              ),
              label: Text("刘备2"),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("蜀"),
              ),
              label: Text("刘备3"),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("蜀"),
              ),
              label: Text("刘备4"),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("蜀"),
              ),
              label: Text("刘备5"),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("蜀"),
              ),
              label: Text("刘备6"),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("蜀"),
              ),
              label: Text("刘备7"),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("蜀"),
              ),
              label: Text("刘备8"),
            ),
          ],
        ),
        Wrap(
          children: list(),
        ),
      ],
    );
  }
}
