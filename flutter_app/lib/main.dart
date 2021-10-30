import 'package:flutter/material.dart';
import 'package:flutter_app/11_others/custom_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// import '01_basic/l01_hello.dart';
// import '01_basic/l02_text.dart';
// import '02_layout/l01_container.dart';
// import '02_layout/l02_column_row.dart';
// import '02_layout/l03_flex.dart';
// import '02_layout/l04_wrap.dart';
// import '02_layout/l05_stack.dart';
// import '02_layout/l06_card.dart';
// import '03_button/l01_button.dart';
// import '04_image/l01_image.dart';
// import '05_list/l01_single_child_scroll_view.dart';
// import '05_list/l02_listview.dart';
// import '05_list/l03_gridview.dart';
// import '06_others/l01_cupertino.dart';
// import '07_third_party/l01_dio.dart';
// import '07_third_party/l02_flutter_swiper.dart';
// import '07_third_party/l03_shared_preferences.dart';
// import '08_state/l01_stateful_widget.dart';
// import '08_state/l02_data_table.dart';
// import '08_state/l03_inherited_widget.dart';
// import '08_state/l04_lifecycle.dart';
// import '08_state/l05_provider.dart';
// import '09_navigation/l01_anonymous.dart';
// import '09_navigation/l02_named_route.dart';
// import '09_navigation/l03_generate_route.dart';
// import '09_navigation/l05_drawer.dart';
// import '09_navigation/l06_bottom_navigator_bar.dart';
// import '09_navigation/l07_tab.dart';
// import '10_form/l01_switch.dart';
// import '11_others/l01_animation.dart';
// import '11_others/l03_hero_animation.dart';
// import '11_others/l04_text_i18n.dart';
import '11_others/l05_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: const Home(),
      theme: ThemeData(
        fontFamily: "微软雅黑",
        colorScheme: const ColorScheme.light(
          primary: Colors.red,
        ),
      ),
      debugShowCheckedModeBanner: false,
      // routes: {
      //   'home': (c) => Home(),
      //   'product': (c) => Product(),
      //   '404': (c) => UnknowPage(),
      // },
      // initialRoute: 'home',
      // onUnknownRoute: (RouteSettings settings) =>
      //     MaterialPageRoute(builder: (c) => const UnknowPage()),
      // onGenerateRoute: (RouteSettings settings) {
      //   print("path -> ${settings.name}");
      //   if (settings.name == '/') {
      //     return MaterialPageRoute(builder: (c) => const Home());
      //   }

      //   var uri = Uri.parse(settings.name ?? "");
      //   if (uri.pathSegments.length == 2 &&
      //       uri.pathSegments.first == 'product') {
      //     int id = int.tryParse(uri.pathSegments[1]) ?? -1;
      //     if (id >= 0) {
      //       return MaterialPageRoute(builder: (c) => Product(id));
      //     }
      //   }

      //   return MaterialPageRoute(builder: (c) => const UnknowPage());
      // },
      localizationsDelegates: const [
        // 本地化代理
        CustomLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("en", "US"),
        Locale("zh", "CN"),
      ],
    );
  }
}
