import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation"),
      ),
      body: HeroAnimationDemo(),
    );
  }
}

class HeroAnimationDemo extends StatelessWidget {
  const HeroAnimationDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: GridView.extent(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 20,
        children: List.generate(
          20,
          (index) {
            String imageURL = "https://picsum.photos/id/$index/300/400";
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (c) {
                  return ImageDetail(imageURL);
                }));
              },
              child: Hero(tag: imageURL, child: Image.network(imageURL)),
            );
          },
        ),
      ),
    );
  }
}

class ImageDetail extends StatelessWidget {
  const ImageDetail(this.imageURL, {Key? key}) : super(key: key);

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Hero(
              tag: imageURL,
              child: Image.network(
                imageURL,
                width: double.infinity,
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}
