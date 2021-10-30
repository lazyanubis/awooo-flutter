import 'package:flutter/material.dart';

// Flex
// - direction 主轴方向
// - mainAxisAlignment 主轴对齐方式
// - textDirection 水平方向上的排列顺序
// - crossAxisAlignment 交叉轴对齐方式
// - verticalDirection 垂直方向上的排列顺序
// - children 子组件
// Expanded 可伸缩组件
// - flex 弹性布局所占比例
// - child 子组件

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flex"),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings),
        ],
        elevation: 0,
      ),
      body: const FlexDemo(),
    );
  }
}

class FlexDemo extends StatelessWidget {
  const FlexDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              color: Colors.lightGreen,
              height: 50,
              width: 50,
            ),
            Expanded(
              child: Container(
                color: Colors.lightBlue,
                height: 50,
              ),
            ),
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          textDirection: TextDirection.rtl,
          children: [
            Icon(Icons.settings, size: 50),
            Icon(Icons.settings_accessibility_outlined, size: 50),
            Icon(Icons.settings_accessibility_outlined, size: 50),
            Icon(Icons.settings_accessibility_outlined, size: 50),
          ],
        ),
      ],
    );
  }
}
