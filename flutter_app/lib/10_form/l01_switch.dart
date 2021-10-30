import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("switch"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("data"),
            SwitchDemo(),
            Divider(),
            CheckboxDemo(),
            Divider(),
            RadioDemo(),
            Divider(),
            TextFieldDemo(),
            Divider(),
          ],
        ),
      ),
    );
  }
}

class SwitchDemo extends StatefulWidget {
  const SwitchDemo({Key? key}) : super(key: key);

  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        children: [
          ListTile(
            leading: Switch(
              value: _switchValue,
              onChanged: (v) {
                setState(() {
                  _switchValue = v;
                });
              },
              activeColor: Colors.orange,
              activeTrackColor: Colors.red,
            ),
            title: Text("当前状态是: ${_switchValue == true ? '选中' : '未选中'}"),
          ),
          ListTile(
            leading: CupertinoSwitch(
              value: _switchValue,
              onChanged: (v) {
                setState(() {
                  _switchValue = v;
                });
              },
            ),
            title: Text("当前状态是: ${_switchValue == true ? '选中' : '未选中'}"),
          ),
        ],
      ),
    );
  }
}

class CheckboxDemo extends StatefulWidget {
  const CheckboxDemo({Key? key}) : super(key: key);

  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool _male = true;
  bool _female = true;
  bool _transgender = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Checkbox(
            value: _male,
            onChanged: (b) => setState(() => _male = b == true),
          ),
          title: Text("male"),
        ),
        ListTile(
          leading: Checkbox(
            value: _female,
            onChanged: (b) => setState(() => _female = b == true),
          ),
          title: Text("female"),
        ),
        ListTile(
          leading: Checkbox(
            value: _transgender,
            onChanged: (b) => setState(() => _transgender = b == true),
          ),
          title: Text("transgender"),
        ),
        CheckboxListTile(
          value: _transgender,
          onChanged: (b) => setState(() => _transgender = b == true),
          title: Text("transgender"),
          selected: _transgender,
        ),
      ],
    );
  }
}

class RadioDemo extends StatefulWidget {
  const RadioDemo({Key? key}) : super(key: key);

  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int gender = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("male"),
                Radio(
                  value: 1,
                  groupValue: gender,
                  onChanged: (int? v) => setState(() => gender = v ?? 0),
                ),
                Text("female"),
                Radio(
                  value: 2,
                  groupValue: gender,
                  onChanged: (int? v) => setState(() => gender = v ?? 0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({Key? key}) : super(key: key);

  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  String username = "";
  String password = "";
  String description = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            // autofocus: true,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.phone),
              labelText: "手机号",
              hintText: "请输入手机号",
            ),
            maxLength: 100,
            onChanged: (v) => setState(() => username = v),
          ),
          TextField(
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.password),
              labelText: "密码",
              hintText: "请输入密码",
            ),
            maxLength: 100,
            onChanged: (v) => setState(() => password = v),
          ),
          TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.password),
              labelText: "密码",
              hintText: "请输入密码",
            ),
            maxLength: 100,
            maxLines: 5,
            onChanged: (v) => setState(() => password = v),
          ),
        ],
      ),
    );
  }
}
