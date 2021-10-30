import 'package:flutter/material.dart';

// ListView
// - 加载列表的组件 加载所有的 Widgets，使用 Widget 较少的场景
// - ListTile (leading tile subtitle trailing selected)
// ListView.builder
// - 按需加载 Widget，性能比默认构造函数高，适用于 Widget 较多的场景
// ListView.separated
// - 比 ListView 多个分割器

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings),
        ],
        elevation: 0,
      ),
      body: ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          ListViewBasic(),
        ],
      ),
    );
  }
}

class ListViewBasic extends StatelessWidget {
  const ListViewBasic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.ac_unit_rounded),
            title: Text("123"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: Icon(Icons.ac_unit_rounded),
            title: Text("123"),
            trailing: Icon(Icons.keyboard_arrow_right),
            selected: true,
          ),
          ListTile(
            leading: Icon(Icons.ac_unit_rounded),
            title: Text("123"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: Icon(Icons.ac_unit_rounded),
            title: Text("123"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
    );
  }
}
