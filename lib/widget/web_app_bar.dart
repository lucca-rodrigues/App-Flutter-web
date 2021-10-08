import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(children: [
        Image.asset(
          "assets/images/logo.png",
          fit: BoxFit.contain,
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_rounded)),
      ]),
    );
  }
}
