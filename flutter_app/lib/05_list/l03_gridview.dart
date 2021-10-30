import 'package:flutter/material.dart';

// GridView
// - children 子组件
// - scrollDirection 滚动方向
// - gridDelegate
//   SliverGridDelegateWithFixedCrossAxisCount 指令列数 宽度自适应
//   SliverGridDelegateWithFixedCrossAxisExtent 自定子组件宽度，列数自适应
// GridView.count
// Gridview.extend
// Gridview.builder

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView"),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings),
        ],
        elevation: 0,
      ),
      body: GridViewDemo(),
    );
  }
}

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 1.5,
        ),
        children: [
          Container(color: Colors.blue),
          Container(color: Colors.black87),
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.blue),
        ],
      ),
    );
  }
}
