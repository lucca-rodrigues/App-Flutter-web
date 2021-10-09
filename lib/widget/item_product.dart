import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  String description;
  String price;
  String image;

  ProductItem(this.description, this.price, this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey),
          color: Colors.white),
      padding: EdgeInsets.all(16),
      child: Column(children: [
        Expanded(
          flex: 8,
          child: Image.asset(
            "images/${this.image}",
            fit: BoxFit.contain,
          ),
        ),
        Expanded(flex: 1, child: Text(this.description)),
        Expanded(
            flex: 1,
            child: Text("R\$ ${this.price}",
                style: TextStyle(fontWeight: FontWeight.bold))),
      ]),
    );
  }
}
