import 'package:app_teste/widget/dynamic_text.dart';
import 'package:app_teste/widget/item_product.dart';
import 'package:app_teste/widget/mobile_app_bar.dart';
import 'package:app_teste/widget/web_app_bar.dart';
import 'package:flutter/material.dart';

class VirtualShopping extends StatefulWidget {
  const VirtualShopping({Key? key}) : super(key: key);
  @override
  _VirtualShoppingState createState() => _VirtualShoppingState();
}

class _VirtualShoppingState extends State<VirtualShopping> {
  _dynamicSizeQuery(double width) {
    int columns = 2;

    if (width <= 600) {
      columns = 2;
    } else if (width <= 900) {
      columns = 4;
    } else {
      columns = 6;
    }
    return columns;
  }

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
        body: Padding(
          padding: EdgeInsets.all(16),
          child: GridView.count(
            crossAxisCount: _dynamicSizeQuery(width),
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: [
              ProductItem("Notebook Acer", "2.500,00", "p1.jpg"),
              ProductItem("Pnew Goodyear aro 16", "800,00", "p2.jpg"),
              ProductItem("Samsung 9", "4.100,00", "p3.jpg"),
              ProductItem("Samsung Edge", "2.149,90", "p4.jpg"),
              ProductItem("Galaxy 10", "2.299,90", "p5.jpg"),
              ProductItem("Iphone 11", "12.999,90", "p6.jpg"),
              DynamicText(),
            ],
          ),
        ),
      );
    });
  }
}
