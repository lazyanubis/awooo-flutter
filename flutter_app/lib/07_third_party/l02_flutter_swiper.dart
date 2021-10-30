import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("flutter_swiper"),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings),
        ],
        elevation: 0,
      ),
      body: const FlutterSwiperDemo(),
    );
  }
}

class FlutterSwiperDemo extends StatelessWidget {
  const FlutterSwiperDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 200,
          child: Swiper(
            itemBuilder: (c, i) {
              return Text(i.toString());
            },
            itemCount: 3,
            pagination: SwiperPagination(),
            control: SwiperControl(),
          ),
        ),
        Container(
          height: 200,
          child: Swiper(
            itemBuilder: (c, i) {
              return Container(
                color: Colors.green[100 * i + 100],
                child: Text(i.toString()),
              );
            },
            itemCount: 4,
            viewportFraction: 0.7,
            scale: 0.7,
          ),
        ),
        Container(
          height: 200,
          child: Swiper(
            itemBuilder: (c, i) {
              return Container(
                color: Colors.green[100 * i + 100],
                child: Text(i.toString()),
              );
            },
            itemCount: 4,
            itemWidth: 300,
            layout: SwiperLayout.STACK,
          ),
        ),
        Container(
          height: 200,
          child: Swiper(
            itemBuilder: (c, i) {
              return Container(
                color: Colors.green[100 * i + 100],
                child: Text(i.toString()),
              );
            },
            itemCount: 4,
            itemWidth: 300,
            layout: SwiperLayout.TINDER,
          ),
        ),
      ],
    );
  }
}
