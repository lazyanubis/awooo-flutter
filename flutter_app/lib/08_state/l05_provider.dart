import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LikesModel(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Provider"),
          leading: const Icon(Icons.menu),
          actions: const [
            Icon(Icons.settings),
          ],
          elevation: 0,
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class LikesModel extends ChangeNotifier {
  int _num = 0;
  int get counter => _num;
  increment() {
    _num++;
    notifyListeners();
  }

  deccrement() {
    _num--;
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
            onPressed: Provider.of<LikesModel>(context).deccrement,
            child: Text("-")),
        Text("${context.watch<LikesModel>().counter}"),
        OutlinedButton(
            onPressed: Provider.of<LikesModel>(context).increment,
            child: Text("+")),
      ],
    );
  }
}
