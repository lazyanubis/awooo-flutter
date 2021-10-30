import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: AnimationDemo(),
    );
  }
}

class AnimationDemo extends StatefulWidget {
  const AnimationDemo({Key? key}) : super(key: key);

  @override
  _AnimationDemoState createState() => _AnimationDemoState();
}

class _AnimationDemoState extends State<AnimationDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  Animation? animation;

  @override
  void initState() {
    super.initState();

    // 1. 创建控制器
    controller = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );

    // 2. 声明动画曲线
    animation = CurvedAnimation(parent: controller, curve: Curves.bounceIn);

    // 2.2 设置动画值的范围
    animation = Tween(begin: 150.0, end: 250.0).animate(controller);

    // 3. 监听动画
    animation?.addListener(() {
      print(animation?.value);
      setState(() {});
    });

    // 4. 执行动画
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () => controller.forward(),
            child: Text("放大"),
          ),
          ElevatedButton(
            onPressed: () => controller.reverse(),
            child: Text("缩小"),
          ),
          ElevatedButton(
            onPressed: () => {
              animation?.addStatusListener((status) {
                if (status == AnimationStatus.completed) {
                  controller.reverse();
                } else if (status == AnimationStatus.dismissed) {
                  controller.forward();
                }
              }),
            },
            child: Text("重复"),
          ),
          ElevatedButton(
            onPressed: () => controller.stop(),
            child: Text("停止"),
          ),
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: animation?.value,
          ),
          Opacity(
            opacity: controller.value,
            child: Text("1231232"),
          ),
        ],
      ),
    );
  }
}
