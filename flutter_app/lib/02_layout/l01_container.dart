import 'package:flutter/material.dart';

// 布局 Container
// - child 声明子组件
// - padding margin
//   EdgeInsets (all(), fromLTRB(), only())
// - decoration 修饰
//   BoxDecoration (边框、圆角、渐变、阴影、背景色、背景图片)
// - alignment
//   AlignMent (内容对齐)
// - transform
//   Matrix4 (平移 translate、旋转 rotate、缩放 scale、斜切 skew)

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings),
        ],
        elevation: 0,
      ),
      body: const ContainerDemo(),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "1231231231231231212312312312312312123123123123123121231231231231231212312312312312312",
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      // width: 200,
      // height: 100,
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(10, 20, 30, 40),
      alignment: Alignment.center,
      // transform: Matrix4.translationValues(100, 0, 0),
      // transform: Matrix4.rotationZ(0.1),
      transform: Matrix4.skewX(0.2),
      decoration: BoxDecoration(
        // border: Border(
        //   top: BorderSide(
        //     width: 10,
        //   ),
        //   left: BorderSide(
        //     width: 10,
        //   ),
        // ),
        border: Border.all(
          width: 10,
          color: Colors.blue,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
        ),
        color: Colors.lightGreen[200],
        gradient: LinearGradient(
          colors: [
            Colors.lightBlue,
            Colors.lightGreen,
          ],
        ),
      ),
    );
  }
}
