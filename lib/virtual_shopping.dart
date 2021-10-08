import 'package:app_teste/widget/mobile_app_bar.dart';
import 'package:app_teste/widget/web_app_bar.dart';
import 'package:flutter/material.dart';

class VirtualShopping extends StatefulWidget {
  const VirtualShopping({Key? key}) : super(key: key);

  @override
  _VirtualShoppingState createState() => _VirtualShoppingState();
}

class _VirtualShoppingState extends State<VirtualShopping> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      var width = constraint.maxWidth;
      var heightBar = AppBar().preferredSize.height;
      return Scaffold(
        appBar: width < 600
            ? PreferredSize(
                child: MobileAppBar(), preferredSize: Size(width, heightBar))
            : PreferredSize(
                child: WebAppBar(), preferredSize: Size(width, heightBar)),
      );
    });
  }
}
