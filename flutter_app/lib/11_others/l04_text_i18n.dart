import 'package:flutter/material.dart';
import 'custom_localizations.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("I18N"),
      ),
      body: I18nDemo(),
    );
  }
}

class I18nDemo extends StatelessWidget {
  const I18nDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(123);
    print(Localizations.of<CustomLocalizations>(context, CustomLocalizations));
    return Center(
      child: Text(
        Localizations.of<CustomLocalizations>(context, CustomLocalizations)
                ?.t("greet") ??
            "",
        style: TextStyle(
          fontSize: 60,
        ),
      ),
    );
  }
}
