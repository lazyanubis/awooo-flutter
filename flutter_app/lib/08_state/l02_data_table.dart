import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DataTable"),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings),
        ],
        elevation: 0,
      ),
      body: UserList(),
    );
  }
}

class UserList extends StatefulWidget {
  UserList({Key? key}) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class User {
  String name;
  int age;
  bool selected;
  User(this.name, this.age, {this.selected = false});
}

class _UserListState extends State<UserList> {
  List<User> _users = [
    User("123", 123),
    User("123", 125),
    User("123", 123),
    User("123", 123),
  ];
  bool _sortAscending = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          sortColumnIndex: 1,
          sortAscending: _sortAscending,
          dataRowHeight: 100,
          horizontalMargin: 20,
          columnSpacing: 100,
          columns: [
            DataColumn(label: Text("姓名")),
            DataColumn(
              label: Text("年龄"),
              numeric: true,
              onSort: (int index, bool assceding) {
                setState(() {
                  _sortAscending = assceding;
                  if (_sortAscending) {
                    _users.sort((a, b) => a.age.compareTo(b.age));
                  } else {
                    _users.sort((b, a) => a.age.compareTo(b.age));
                  }
                });
              },
            ),
            DataColumn(label: Text("性别")),
            DataColumn(label: Text("简介")),
          ],
          rows: _users
              .map((e) => DataRow(
                    cells: [
                      DataCell(Text(e.name)),
                      DataCell(Text("${e.age}")),
                      DataCell(Text("男")),
                      DataCell(Text("--")),
                    ],
                    selected: e.selected,
                    onSelectChanged: (selected) {
                      setState(() {
                        e.selected = selected == true;
                      });
                    },
                  ))
              .toList(),
        ),
      ),
    );
  }
}
