import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inherited"),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings),
        ],
        elevation: 0,
      ),
      body: InheritedDemo(),
    );
  }
}

class ShareDataWidget extends InheritedWidget {
  ShareDataWidget({Key? key, required this.child, required this.num})
      : super(key: key, child: child);

  final Widget child;

  final int num;

  static ShareDataWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
  }

  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    return true;
  }
}

class InheritedDemo extends StatefulWidget {
  InheritedDemo({Key? key}) : super(key: key);

  @override
  _InheritedDemoState createState() => _InheritedDemoState();
}

class _InheritedDemoState extends State<InheritedDemo> {
  int _num = 0;

  _increment() {
    setState(() {
      _num++;
    });
  }

  _decrement() {
    setState(() {
      _num--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ShareDataWidget(
      num: _num,
      child: Column(
        children: [
          OutlinedButton(onPressed: _decrement, child: Text("-")),
          MyCounter(),
          OutlinedButton(onPressed: _increment, child: Text("+")),
        ],
      ),
    );
  }
}

class MyCounter extends StatefulWidget {
  MyCounter({Key? key}) : super(key: key);

  @override
  _MyCounterState createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  @override
  Widget build(BuildContext context) {
    return Text("${ShareDataWidget.of(context)?.num}");
  }
}
