import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("tab"),
          bottom: TabBar(
            tabs: List.generate(
              5,
              (index) => Tab(
                text: "${index}",
                icon: Icon(Icons.home),
              ),
            ),
            labelColor: Colors.lightBlue,
            unselectedLabelColor: Colors.black87,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
        ),
        body: TabBarView(
          children:
              List.generate(5, (index) => Center(child: Text("${index}"))),
        ),
        bottomNavigationBar: TabBar(
          tabs: List.generate(
            5,
            (index) => Tab(
              text: "${index}",
              icon: Icon(Icons.home),
            ),
          ),
          labelColor: Colors.lightBlue,
          unselectedLabelColor: Colors.black87,
        ),
      ),
    );
  }
}
