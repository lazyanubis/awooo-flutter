import 'package:flutter/material.dart';

// SingleChildScrollView
// - child 子组件
// - padding 内边距
// - scrollDirection 滚动方向 Axis.horizontal Axis.vertical
// - reverse 初始滚动位置 false 头部 true 尾部
// - physics
//   ClampingScrollPhysics Android 下微光效果
//   BouncingScrollPhysics iOS 下弹性效果

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SingleChildeScrollViewDemo"),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings),
        ],
        elevation: 0,
      ),
      body: SingleChildeScrollViewDemo(),
    );
  }
}

class SingleChildeScrollViewDemo extends StatelessWidget {
  const SingleChildeScrollViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(10),
          reverse: true,
          child: Row(
            children: [
              OutlinedButton(onPressed: () {}, child: Text("123")),
              OutlinedButton(onPressed: () {}, child: Text("123")),
              OutlinedButton(onPressed: () {}, child: Text("123")),
              OutlinedButton(onPressed: () {}, child: Text("123")),
              OutlinedButton(onPressed: () {}, child: Text("123")),
              OutlinedButton(onPressed: () {}, child: Text("123")),
              OutlinedButton(onPressed: () {}, child: Text("123")),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(10),
          reverse: true,
          // physics: ClampingScrollPhysics(),
          physics: BouncingScrollPhysics(),
          child: Column(
            children: List.generate(
                100,
                (index) => OutlinedButton(
                    onPressed: () {}, child: Text(index.toString()))),
          ),
        ),
      ],
    );
  }
}
