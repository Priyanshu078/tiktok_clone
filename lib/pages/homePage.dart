import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  List images = ["dummyimage.jpg", "dummy2.jpg", "dummy3.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            controller: _pageController,
            itemCount: 3,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Container(
                  child: Stack(alignment: Alignment.bottomRight, children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Image(
                    image: AssetImage("assets/${images[index]}"),
                    fit: BoxFit.fill,
                  ),
                ),
                // Align(
                //   alignment: Alignment.bottomCenter,
                //   child: Container(
                //     child: Column(children: [
                //       Container(
                //         height: 50,
                //         width: 50,
                //         decoration: BoxDecoration(
                //             shape: BoxShape.circle,
                //             border: Border.all(color: Colors.black)),
                //         child: Image(
                //           image: AssetImage("assets/${images[index]}"),
                //           fit: BoxFit.fill,
                //         ),
                //       )
                //     ]),
                //   ),
                // ),
              ]));
            }));
  }
}
