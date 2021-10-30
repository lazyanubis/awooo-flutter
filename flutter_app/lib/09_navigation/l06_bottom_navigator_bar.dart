import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      backgroundColor: Colors.lightBlue,
      icon: Icon(Icons.home),
      label: "首页",
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.lightBlue,
      icon: Icon(Icons.home),
      label: "首页",
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.lightBlue,
      icon: Icon(Icons.home),
      label: "首页",
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.lightBlue,
      icon: Icon(Icons.home),
      label: "首页",
    ),
  ];
  final pages = [
    Center(child: Text("1")),
    Center(child: Text("2")),
    Center(child: Text("3")),
    Center(child: Text("4")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("123"),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: items,
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          onTap: (i) {
            if (i != index) {
              setState(() {
                index = i;
              });
            }
          }),
      body: pages[index],
    );
  }
}
